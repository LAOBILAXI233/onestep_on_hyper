.class public final Lcom/smartisanos/smengine/math/Matrix3f;
.super Ljava/lang/Object;
.source "Matrix3f.java"

.implements Ljava/lang/Cloneable;


.field public static final IDENTITY:Lcom/smartisanos/smengine/math/Matrix3f;

.field public static final ZERO:Lcom/smartisanos/smengine/math/Matrix3f;

.field private static final logger:Ljava/util/logging/Logger;

.field static final serialVersionUID:J = 0x1L


.field protected m00:F

.field protected m01:F

.field protected m02:F

.field protected m10:F

.field protected m11:F

.field protected m12:F

.field protected m20:F

.field protected m21:F

.field protected m22:F


.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 52
    const-class v0, Lcom/smartisanos/smengine/math/Matrix3f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/math/Matrix3f;->logger:Ljava/util/logging/Logger;

    .line 56
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix3f;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v1

    invoke-direct/range {v0 .. v9}, Lcom/smartisanos/smengine/math/Matrix3f;-><init>(FFFFFFFFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Matrix3f;->ZERO:Lcom/smartisanos/smengine/math/Matrix3f;

    .line 57
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix3f;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/math/Matrix3f;->IDENTITY:Lcom/smartisanos/smengine/math/Matrix3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Matrix3f;->loadIdentity()V

    .line 66
    return-void
.end method

.method public constructor <init>(FFFFFFFFF)V
    .locals 0
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
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 94
    iput p2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 95
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 96
    iput p4, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 97
    iput p5, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    .line 98
    iput p6, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 99
    iput p7, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 100
    iput p8, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    .line 101
    iput p9, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/math/Matrix3f;)V
    .locals 0
    .param p1, "mat"    # Lcom/smartisanos/smengine/math/Matrix3f;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Matrix3f;->set(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Matrix3f;

    .line 113
    return-void
.end method

.method static equalIdentity(Lcom/smartisanos/smengine/math/Matrix3f;)Z
    .locals 7
    .param p0, "mat"    # Lcom/smartisanos/smengine/math/Matrix3f;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 1366
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 1397
    :cond_0
    :goto_0
    return v0

    .line 1369
    :cond_1
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 1372
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 1376
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 1379
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 1383
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 1386
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 1390
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 1393
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 1397
    const/4 v0, 0x1

    goto :goto_0
.end method


.method public absoluteLocal()V
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 120
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 121
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 122
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 123
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    .line 124
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 125
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 126
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    .line 127
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    .line 128
    return-void
.end method

.method public adjoint()Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 1

    .prologue
    .line 1066
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/math/Matrix3f;->adjoint(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Matrix3f;

    move-result-object v0

    return-object v0
.end method

.method public adjoint(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 3
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Matrix3f;

    .prologue
    .line 1077
    if-nez p1, :cond_0

    .line 1078
    new-instance p1, Lcom/smartisanos/smengine/math/Matrix3f;

    .end local p1    # "store":Lcom/smartisanos/smengine/math/Matrix3f;
    invoke-direct {p1}, Lcom/smartisanos/smengine/math/Matrix3f;-><init>()V

    .line 1081
    .restart local p1    # "store":Lcom/smartisanos/smengine/math/Matrix3f;
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 1082
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 1083
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 1084
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 1085
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    .line 1086
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 1087
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 1088
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    .line 1089
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    .line 1091
    return-object p1
.end method

.method public clone()Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 2

    .prologue
    .line 1403
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/math/Matrix3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1404
    :catch_0
    move-exception v0

    .line 1405
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
    .line 48
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Matrix3f;->clone()Lcom/smartisanos/smengine/math/Matrix3f;

    move-result-object v0

    return-object v0
.end method

.method public determinant()F
    .locals 7

    .prologue
    .line 1100
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iget v6, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v5, v6

    sub-float v0, v4, v5

    .line 1101
    .local v0, "fCo00":F
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iget v6, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v5, v6

    sub-float v1, v4, v5

    .line 1102
    .local v1, "fCo10":F
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iget v6, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 1103
    .local v2, "fCo20":F
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    mul-float/2addr v5, v2

    add-float v3, v4, v5

    .line 1104
    .local v3, "fDet":F
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1212
    instance-of v3, p1, Lcom/smartisanos/smengine/math/Matrix3f;

    if-eqz v3, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v1, v2

    .line 1251
    :cond_1
    :goto_0
    return v1

    .line 1216
    :cond_2
    if-eq p0, p1, :cond_1

    move-object v0, p1

    .line 1220
    check-cast v0, Lcom/smartisanos/smengine/math/Matrix3f;

    .line 1221
    .local v0, "comp":Lcom/smartisanos/smengine/math/Matrix3f;
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 1222
    goto :goto_0

    .line 1224
    :cond_3
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 1225
    goto :goto_0

    .line 1227
    :cond_4
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 1228
    goto :goto_0

    .line 1231
    :cond_5
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    .line 1232
    goto :goto_0

    .line 1234
    :cond_6
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_7

    move v1, v2

    .line 1235
    goto :goto_0

    .line 1237
    :cond_7
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_8

    move v1, v2

    .line 1238
    goto :goto_0

    .line 1241
    :cond_8
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_9

    move v1, v2

    .line 1242
    goto :goto_0

    .line 1244
    :cond_9
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_a

    move v1, v2

    .line 1245
    goto :goto_0

    .line 1247
    :cond_a
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 1248
    goto :goto_0
.end method

.method public fillFloatArray([FZ)V
    .locals 6
    .param p1, "f"    # [F
    .param p2, "columnMajor"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 460
    if-eqz p2, :cond_0

    .line 461
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    aput v0, p1, v1

    .line 462
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    aput v0, p1, v2

    .line 463
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    aput v0, p1, v3

    .line 464
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    aput v0, p1, v4

    .line 465
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    aput v0, p1, v5

    .line 466
    const/4 v0, 0x5

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    aput v1, p1, v0

    .line 467
    const/4 v0, 0x6

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    aput v1, p1, v0

    .line 468
    const/4 v0, 0x7

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    aput v1, p1, v0

    .line 469
    const/16 v0, 0x8

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    aput v1, p1, v0

    .line 481
    :goto_0
    return-void

    .line 471
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    aput v0, p1, v1

    .line 472
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    aput v0, p1, v2

    .line 473
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    aput v0, p1, v3

    .line 474
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    aput v0, p1, v4

    .line 475
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    aput v0, p1, v5

    .line 476
    const/4 v0, 0x5

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    aput v1, p1, v0

    .line 477
    const/4 v0, 0x6

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    aput v1, p1, v0

    .line 478
    const/4 v0, 0x7

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    aput v1, p1, v0

    .line 479
    const/16 v0, 0x8

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    aput v1, p1, v0

    goto :goto_0
.end method

.method public fillFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;
    .locals 4
    .param p1, "fb"    # Ljava/nio/FloatBuffer;
    .param p2, "columnMajor"    # Z

    .prologue
    .line 448
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v0

    .line 451
    .local v0, "vars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->matrixWrite:[F

    invoke-virtual {p0, v1, p2}, Lcom/smartisanos/smengine/math/Matrix3f;->fillFloatArray([FZ)V

    .line 452
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->matrixWrite:[F

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 454
    invoke-virtual {v0}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 456
    return-object p1
.end method

.method public fromAngleAxis(FLcom/smartisanos/smengine/math/Vector3f;)V
    .locals 1
    .param p1, "angle"    # F
    .param p2, "axis"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 771
    invoke-virtual {p2}, Lcom/smartisanos/smengine/math/Vector3f;->normalize()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    .line 772
    .local v0, "normAxis":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Matrix3f;->fromAngleNormalAxis(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 773
    return-void
.end method

.method public fromAngleNormalAxis(FLcom/smartisanos/smengine/math/Vector3f;)V
    .locals 15
    .param p1, "angle"    # F
    .param p2, "axis"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 785
    invoke-static/range {p1 .. p1}, Lcom/smartisanos/smengine/math/FastMath;->cos(F)F

    move-result v1

    .line 786
    .local v1, "fCos":F
    invoke-static/range {p1 .. p1}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v3

    .line 787
    .local v3, "fSin":F
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v2, v13, v1

    .line 788
    .local v2, "fOneMinusCos":F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p2

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float v4, v13, v14

    .line 789
    .local v4, "fX2":F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p2

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float v8, v13, v14

    .line 790
    .local v8, "fY2":F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, p2

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float v11, v13, v14

    .line 791
    .local v11, "fZ2":F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p2

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v13, v14

    mul-float v6, v13, v2

    .line 792
    .local v6, "fXYM":F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p2

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v13, v14

    mul-float v7, v13, v2

    .line 793
    .local v7, "fXZM":F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p2

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v13, v14

    mul-float v10, v13, v2

    .line 794
    .local v10, "fYZM":F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float v5, v13, v3

    .line 795
    .local v5, "fXSin":F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float v9, v13, v3

    .line 796
    .local v9, "fYSin":F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float v12, v13, v3

    .line 798
    .local v12, "fZSin":F
    mul-float v13, v4, v2

    add-float/2addr v13, v1

    iput v13, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 799
    sub-float v13, v6, v12

    iput v13, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 800
    add-float v13, v7, v9

    iput v13, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 801
    add-float v13, v6, v12

    iput v13, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 802
    mul-float v13, v8, v2

    add-float/2addr v13, v1

    iput v13, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    .line 803
    sub-float v13, v10, v5

    iput v13, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 804
    sub-float v13, v7, v9

    iput v13, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 805
    add-float v13, v10, v5

    iput v13, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    .line 806
    mul-float v13, v11, v2

    add-float/2addr v13, v1

    iput v13, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    .line 807
    return-void
.end method

.method public fromAxes(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 1
    .param p1, "uAxis"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "vAxis"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "wAxis"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 662
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 663
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 664
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 666
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 667
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    .line 668
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    .line 670
    iget v0, p3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 671
    iget v0, p3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 672
    iget v0, p3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    .line 673
    return-void
.end method

.method public fromStartEndVectors(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 26
    .param p1, "start"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "end"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 1267
    new-instance v18, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v18 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1270
    .local v18, "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->cross(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1271
    invoke-virtual/range {p1 .. p2}, Lcom/smartisanos/smengine/math/Vector3f;->dot(Lcom/smartisanos/smengine/math/Vector3f;)F

    move-result v7

    .line 1272
    .local v7, "e":F
    const/16 v21, 0x0

    cmpg-float v21, v7, v21

    if-gez v21, :cond_0

    neg-float v8, v7

    .line 1275
    .local v8, "f":F
    :goto_0
    const v21, 0x3f7ff972    # 0.9999f

    cmpl-float v21, v8, v21

    if-lez v21, :cond_8

    .line 1276
    new-instance v17, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v17 .. v17}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1277
    .local v17, "u":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v20, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v20 .. v20}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1281
    .local v20, "x":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmpl-double v21, v22, v24

    if-lez v21, :cond_1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v21, v0

    :goto_1
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 1282
    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmpl-double v21, v22, v24

    if-lez v21, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v21, v0

    :goto_2
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1283
    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmpl-double v21, v22, v24

    if-lez v21, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v21, v0

    :goto_3
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1285
    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v21, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_5

    .line 1286
    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v21, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_4

    .line 1287
    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 1288
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1303
    :goto_4
    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 1304
    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1305
    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1306
    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 1307
    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1308
    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1310
    const/high16 v21, 0x40000000    # 2.0f

    move-object/from16 v0, v17

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->dot(Lcom/smartisanos/smengine/math/Vector3f;)F

    move-result v22

    div-float v4, v21, v22

    .line 1311
    .local v4, "c1":F
    const/high16 v21, 0x40000000    # 2.0f

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->dot(Lcom/smartisanos/smengine/math/Vector3f;)F

    move-result v22

    div-float v5, v21, v22

    .line 1312
    .local v5, "c2":F
    mul-float v21, v4, v5

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;->dot(Lcom/smartisanos/smengine/math/Vector3f;)F

    move-result v22

    mul-float v6, v21, v22

    .line 1314
    .local v6, "c3":F
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ge v15, v0, :cond_9

    .line 1315
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_6
    const/16 v21, 0x3

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 1316
    neg-float v0, v4

    move/from16 v21, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/smartisanos/smengine/math/Vector3f;->get(I)F

    move-result v22

    mul-float v21, v21, v22

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->get(I)F

    move-result v22

    mul-float v21, v21, v22

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/smartisanos/smengine/math/Vector3f;->get(I)F

    move-result v22

    mul-float v22, v22, v5

    .line 1317
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->get(I)F

    move-result v23

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/smartisanos/smengine/math/Vector3f;->get(I)F

    move-result v22

    mul-float v22, v22, v6

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->get(I)F

    move-result v23

    mul-float v22, v22, v23

    add-float v19, v21, v22

    .line 1318
    .local v19, "val":F
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v15, v1, v2}, Lcom/smartisanos/smengine/math/Matrix3f;->set(IIF)Lcom/smartisanos/smengine/math/Matrix3f;

    .line 1315
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .end local v4    # "c1":F
    .end local v5    # "c2":F
    .end local v6    # "c3":F
    .end local v8    # "f":F
    .end local v15    # "i":I
    .end local v16    # "j":I
    .end local v17    # "u":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v19    # "val":F
    .end local v20    # "x":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    move v8, v7

    .line 1272
    goto/16 :goto_0

    .line 1281
    .restart local v8    # "f":F
    .restart local v17    # "u":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v20    # "x":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    goto/16 :goto_1

    .line 1282
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    goto/16 :goto_2

    .line 1283
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    goto/16 :goto_3

    .line 1290
    :cond_4
    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1291
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    goto/16 :goto_4

    .line 1294
    :cond_5
    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v21, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_6

    .line 1295
    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1296
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    goto/16 :goto_4

    .line 1298
    :cond_6
    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1299
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    goto/16 :goto_4

    .line 1320
    .restart local v4    # "c1":F
    .restart local v5    # "c2":F
    .restart local v6    # "c3":F
    .restart local v15    # "i":I
    .restart local v16    # "j":I
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v15}, Lcom/smartisanos/smengine/math/Matrix3f;->get(II)F

    move-result v19

    .line 1321
    .restart local v19    # "val":F
    const/high16 v21, 0x3f800000    # 1.0f

    add-float v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v15, v15, v1}, Lcom/smartisanos/smengine/math/Matrix3f;->set(IIF)Lcom/smartisanos/smengine/math/Matrix3f;

    .line 1314
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 1326
    .end local v4    # "c1":F
    .end local v5    # "c2":F
    .end local v6    # "c3":F
    .end local v15    # "i":I
    .end local v16    # "j":I
    .end local v17    # "u":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v19    # "val":F
    .end local v20    # "x":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_8
    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    add-float v22, v22, v7

    div-float v9, v21, v22

    .line 1327
    .local v9, "h":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v21, v0

    mul-float v10, v9, v21

    .line 1328
    .local v10, "hvx":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v21, v0

    mul-float v14, v9, v21

    .line 1329
    .local v14, "hvz":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v21, v0

    mul-float v11, v10, v21

    .line 1330
    .local v11, "hvxy":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v21, v0

    mul-float v12, v10, v21

    .line 1331
    .local v12, "hvxz":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v21, v0

    mul-float v13, v14, v21

    .line 1332
    .local v13, "hvyz":F
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v23, v0

    mul-float v23, v23, v10

    add-float v23, v23, v7

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Matrix3f;->set(IIF)Lcom/smartisanos/smengine/math/Matrix3f;

    .line 1333
    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v23, v0

    sub-float v23, v11, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Matrix3f;->set(IIF)Lcom/smartisanos/smengine/math/Matrix3f;

    .line 1334
    const/16 v21, 0x0

    const/16 v22, 0x2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v23, v0

    add-float v23, v23, v12

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Matrix3f;->set(IIF)Lcom/smartisanos/smengine/math/Matrix3f;

    .line 1336
    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v23, v0

    add-float v23, v23, v11

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Matrix3f;->set(IIF)Lcom/smartisanos/smengine/math/Matrix3f;

    .line 1337
    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v23, v0

    mul-float v23, v23, v9

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v23, v23, v7

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Matrix3f;->set(IIF)Lcom/smartisanos/smengine/math/Matrix3f;

    .line 1338
    const/16 v21, 0x1

    const/16 v22, 0x2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v23, v0

    sub-float v23, v13, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Matrix3f;->set(IIF)Lcom/smartisanos/smengine/math/Matrix3f;

    .line 1340
    const/16 v21, 0x2

    const/16 v22, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v23, v0

    sub-float v23, v12, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Matrix3f;->set(IIF)Lcom/smartisanos/smengine/math/Matrix3f;

    .line 1341
    const/16 v21, 0x2

    const/16 v22, 0x1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v23, v0

    add-float v23, v23, v13

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Matrix3f;->set(IIF)Lcom/smartisanos/smengine/math/Matrix3f;

    .line 1342
    const/16 v21, 0x2

    const/16 v22, 0x2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v23, v0

    mul-float v23, v23, v14

    add-float v23, v23, v7

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Matrix3f;->set(IIF)Lcom/smartisanos/smengine/math/Matrix3f;

    .line 1344
    .end local v9    # "h":F
    .end local v10    # "hvx":F
    .end local v11    # "hvxy":F
    .end local v12    # "hvxz":F
    .end local v13    # "hvyz":F
    .end local v14    # "hvz":F
    :cond_9
    return-void
.end method

.method public get(II)F
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 169
    packed-switch p1, :pswitch_data_0

    .line 199
    :goto_0
    sget-object v0, Lcom/smartisanos/smengine/math/Matrix3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Invalid matrix index."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid indices into matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    .line 180
    :pswitch_1
    packed-switch p2, :pswitch_data_2

    .line 189
    :pswitch_2
    packed-switch p2, :pswitch_data_3

    goto :goto_0

    .line 191
    :pswitch_3
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 195
    :goto_1
    return v0

    .line 173
    :pswitch_4
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    goto :goto_1

    .line 175
    :pswitch_5
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    goto :goto_1

    .line 177
    :pswitch_6
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    goto :goto_1

    .line 182
    :pswitch_7
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    goto :goto_1

    .line 184
    :pswitch_8
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    goto :goto_1

    .line 186
    :pswitch_9
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    goto :goto_1

    .line 193
    :pswitch_a
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    goto :goto_1

    .line 195
    :pswitch_b
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    goto :goto_1

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 171
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 180
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 189
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public get([FZ)V
    .locals 7
    .param p1, "data"    # [F
    .param p2, "rowMajor"    # Z

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    array-length v0, p1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 215
    if-eqz p2, :cond_0

    .line 216
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    aput v0, p1, v2

    .line 217
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    aput v0, p1, v3

    .line 218
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    aput v0, p1, v4

    .line 219
    const/4 v0, 0x3

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    aput v1, p1, v0

    .line 220
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    aput v0, p1, v5

    .line 221
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    aput v0, p1, v6

    .line 222
    const/4 v0, 0x6

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    aput v1, p1, v0

    .line 223
    const/4 v0, 0x7

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    aput v1, p1, v0

    .line 224
    const/16 v0, 0x8

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    aput v1, p1, v0

    .line 261
    :goto_0
    return-void

    .line 226
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    aput v0, p1, v2

    .line 227
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    aput v0, p1, v3

    .line 228
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    aput v0, p1, v4

    .line 229
    const/4 v0, 0x3

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    aput v1, p1, v0

    .line 230
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    aput v0, p1, v5

    .line 231
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    aput v0, p1, v6

    .line 232
    const/4 v0, 0x6

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    aput v1, p1, v0

    .line 233
    const/4 v0, 0x7

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    aput v1, p1, v0

    .line 234
    const/16 v0, 0x8

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    aput v1, p1, v0

    goto :goto_0

    .line 236
    :cond_1
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 237
    if-eqz p2, :cond_2

    .line 238
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    aput v0, p1, v2

    .line 239
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    aput v0, p1, v3

    .line 240
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    aput v0, p1, v4

    .line 241
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    aput v0, p1, v5

    .line 242
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    aput v0, p1, v6

    .line 243
    const/4 v0, 0x6

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    aput v1, p1, v0

    .line 244
    const/16 v0, 0x8

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    aput v1, p1, v0

    .line 245
    const/16 v0, 0x9

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    aput v1, p1, v0

    .line 246
    const/16 v0, 0xa

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    aput v1, p1, v0

    goto :goto_0

    .line 248
    :cond_2
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    aput v0, p1, v2

    .line 249
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    aput v0, p1, v3

    .line 250
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    aput v0, p1, v4

    .line 251
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    aput v0, p1, v5

    .line 252
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    aput v0, p1, v6

    .line 253
    const/4 v0, 0x6

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    aput v1, p1, v0

    .line 254
    const/16 v0, 0x8

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    aput v1, p1, v0

    .line 255
    const/16 v0, 0x9

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    aput v1, p1, v0

    .line 256
    const/16 v0, 0xa

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    aput v1, p1, v0

    goto/16 :goto_0

    .line 259
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Array size must be 9 or 16 in Matrix3f.get()."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumn(I)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Matrix3f;->getColumn(ILcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getColumn(ILcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p1, "i"    # I
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 334
    if-nez p2, :cond_0

    .line 335
    new-instance p2, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 337
    .restart local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 354
    sget-object v0, Lcom/smartisanos/smengine/math/Matrix3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Invalid column index."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid column index. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :pswitch_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 340
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 341
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 357
    :goto_0
    return-object p2

    .line 344
    :pswitch_1
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 345
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 346
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    goto :goto_0

    .line 349
    :pswitch_2
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 350
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 351
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getRow(I)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Matrix3f;->getRow(ILcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getRow(ILcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p1, "i"    # I
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 384
    if-nez p2, :cond_0

    .line 385
    new-instance p2, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 387
    .restart local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 404
    sget-object v0, Lcom/smartisanos/smengine/math/Matrix3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Invalid row index."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid row index. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :pswitch_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 390
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 391
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 407
    :goto_0
    return-object p2

    .line 394
    :pswitch_1
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 395
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 396
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    goto :goto_0

    .line 399
    :pswitch_2
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 400
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 401
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    goto :goto_0

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1187
    const/16 v0, 0x25

    .line 1188
    .local v0, "hash":I
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x559

    .line 1189
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1190
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1192
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1193
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1194
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1196
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1197
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1198
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1200
    return v0
.end method

.method public invert()Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 1

    .prologue
    .line 993
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/math/Matrix3f;->invert(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Matrix3f;

    move-result-object v0

    return-object v0
.end method

.method public invert(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 4
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Matrix3f;

    .prologue
    .line 1002
    if-nez p1, :cond_0

    .line 1003
    new-instance p1, Lcom/smartisanos/smengine/math/Matrix3f;

    .end local p1    # "store":Lcom/smartisanos/smengine/math/Matrix3f;
    invoke-direct {p1}, Lcom/smartisanos/smengine/math/Matrix3f;-><init>()V

    .line 1006
    .restart local p1    # "store":Lcom/smartisanos/smengine/math/Matrix3f;
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Matrix3f;->determinant()F

    move-result v0

    .line 1007
    .local v0, "det":F
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->abs(F)F

    move-result v1

    const/high16 v2, 0x34000000

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 1008
    invoke-virtual {p1}, Lcom/smartisanos/smengine/math/Matrix3f;->zero()Lcom/smartisanos/smengine/math/Matrix3f;

    move-result-object p1

    .line 1022
    .end local p1    # "store":Lcom/smartisanos/smengine/math/Matrix3f;
    :goto_0
    return-object p1

    .line 1011
    .restart local p1    # "store":Lcom/smartisanos/smengine/math/Matrix3f;
    :cond_1
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 1012
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 1013
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 1014
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 1015
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    .line 1016
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 1017
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 1018
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    .line 1019
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    .line 1021
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/math/Matrix3f;->multLocal(F)Lcom/smartisanos/smengine/math/Matrix3f;

    goto :goto_0
.end method

.method public invertLocal()Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 13

    .prologue
    .line 1031
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Matrix3f;->determinant()F

    move-result v0

    .line 1032
    .local v0, "det":F
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->abs(F)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_0

    .line 1033
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Matrix3f;->zero()Lcom/smartisanos/smengine/math/Matrix3f;

    move-result-object p0

    .line 1057
    .end local p0    # "this":Lcom/smartisanos/smengine/math/Matrix3f;
    :goto_0
    return-object p0

    .line 1036
    .restart local p0    # "this":Lcom/smartisanos/smengine/math/Matrix3f;
    :cond_0
    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iget v11, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iget v12, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v11, v12

    sub-float v1, v10, v11

    .line 1037
    .local v1, "f00":F
    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v11, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v12, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v11, v12

    sub-float v2, v10, v11

    .line 1038
    .local v2, "f01":F
    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v11, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v12, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    mul-float/2addr v11, v12

    sub-float v3, v10, v11

    .line 1039
    .local v3, "f02":F
    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iget v11, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iget v12, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v11, v12

    sub-float v4, v10, v11

    .line 1040
    .local v4, "f10":F
    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v11, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v12, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v11, v12

    sub-float v5, v10, v11

    .line 1041
    .local v5, "f11":F
    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v11, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v12, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    mul-float/2addr v11, v12

    sub-float v6, v10, v11

    .line 1042
    .local v6, "f12":F
    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iget v11, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iget v12, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v11, v12

    sub-float v7, v10, v11

    .line 1043
    .local v7, "f20":F
    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v11, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v12, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v11, v12

    sub-float v8, v10, v11

    .line 1044
    .local v8, "f21":F
    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v11, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v12, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    mul-float/2addr v11, v12

    sub-float v9, v10, v11

    .line 1046
    .local v9, "f22":F
    iput v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 1047
    iput v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 1048
    iput v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 1049
    iput v4, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 1050
    iput v5, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    .line 1051
    iput v6, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 1052
    iput v7, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 1053
    iput v8, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    .line 1054
    iput v9, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    .line 1056
    const/high16 v10, 0x3f800000    # 1.0f

    div-float/2addr v10, v0

    invoke-virtual {p0, v10}, Lcom/smartisanos/smengine/math/Matrix3f;->multLocal(F)Lcom/smartisanos/smengine/math/Matrix3f;

    goto/16 :goto_0
.end method

.method public isIdentity()Z
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 755
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadIdentity()V
    .locals 1

    .prologue
    .line 747
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 748
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 749
    return-void
.end method

.method public mult(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 1
    .param p1, "mat"    # Lcom/smartisanos/smengine/math/Matrix3f;

    .prologue
    .line 819
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Matrix3f;->mult(Lcom/smartisanos/smengine/math/Matrix3f;Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Matrix3f;

    move-result-object v0

    return-object v0
.end method

.method public mult(Lcom/smartisanos/smengine/math/Matrix3f;Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 12
    .param p1, "mat"    # Lcom/smartisanos/smengine/math/Matrix3f;
    .param p2, "product"    # Lcom/smartisanos/smengine/math/Matrix3f;

    .prologue
    .line 839
    if-nez p2, :cond_0

    .line 840
    new-instance p2, Lcom/smartisanos/smengine/math/Matrix3f;

    .end local p2    # "product":Lcom/smartisanos/smengine/math/Matrix3f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Matrix3f;-><init>()V

    .line 842
    .restart local p2    # "product":Lcom/smartisanos/smengine/math/Matrix3f;
    :cond_0
    iget v9, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v10, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v11, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v11, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v10, v11

    add-float v0, v9, v10

    .line 843
    .local v0, "temp00":F
    iget v9, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v10, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v11, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v11, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v10, v11

    add-float v1, v9, v10

    .line 844
    .local v1, "temp01":F
    iget v9, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v10, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v11, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v11, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v10, v11

    add-float v2, v9, v10

    .line 845
    .local v2, "temp02":F
    iget v9, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iget v10, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iget v11, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iget v11, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v10, v11

    add-float v3, v9, v10

    .line 846
    .local v3, "temp10":F
    iget v9, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iget v10, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iget v11, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iget v11, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v10, v11

    add-float v4, v9, v10

    .line 847
    .local v4, "temp11":F
    iget v9, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iget v10, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iget v11, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iget v11, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v10, v11

    add-float v5, v9, v10

    .line 848
    .local v5, "temp12":F
    iget v9, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    iget v10, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    iget v11, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    iget v11, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v10, v11

    add-float v6, v9, v10

    .line 849
    .local v6, "temp20":F
    iget v9, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    iget v10, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    iget v11, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    iget v11, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v10, v11

    add-float v7, v9, v10

    .line 850
    .local v7, "temp21":F
    iget v9, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    iget v10, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    iget v11, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    iget v11, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v10, v11

    add-float v8, v9, v10

    .line 852
    .local v8, "temp22":F
    iput v0, p2, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 853
    iput v1, p2, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 854
    iput v2, p2, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 855
    iput v3, p2, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 856
    iput v4, p2, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    .line 857
    iput v5, p2, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 858
    iput v6, p2, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 859
    iput v7, p2, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    .line 860
    iput v8, p2, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    .line 862
    return-object p2
.end method

.method public mult(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 875
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Matrix3f;->mult(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public mult(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 5
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "product"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 891
    if-nez p2, :cond_0

    .line 892
    new-instance p2, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p2    # "product":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 895
    .restart local p2    # "product":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 896
    .local v0, "x":F
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 897
    .local v1, "y":F
    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 899
    .local v2, "z":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 900
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 901
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 902
    return-object p2
.end method

.method public multLocal(F)Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 914
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 915
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 916
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 917
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 918
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    .line 919
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 920
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 921
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    .line 922
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    .line 923
    return-object p0
.end method

.method public multLocal(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 1
    .param p1, "mat"    # Lcom/smartisanos/smengine/math/Matrix3f;

    .prologue
    .line 959
    invoke-virtual {p0, p1, p0}, Lcom/smartisanos/smengine/math/Matrix3f;->mult(Lcom/smartisanos/smengine/math/Matrix3f;Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Matrix3f;

    move-result-object v0

    return-object v0
.end method

.method public multLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 5
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 937
    if-nez p1, :cond_0

    .line 938
    const/4 p1, 0x0

    .line 945
    .end local p1    # "vec":Lcom/smartisanos/smengine/math/Vector3f;
    :goto_0
    return-object p1

    .line 940
    .restart local p1    # "vec":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 941
    .local v0, "x":F
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 942
    .local v1, "y":F
    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 943
    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 944
    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    goto :goto_0
.end method

.method public normalize(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 5
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Matrix3f;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 274
    if-nez p1, :cond_0

    .line 275
    new-instance p1, Lcom/smartisanos/smengine/math/Matrix3f;

    .end local p1    # "store":Lcom/smartisanos/smengine/math/Matrix3f;
    invoke-direct {p1}, Lcom/smartisanos/smengine/math/Matrix3f;-><init>()V

    .line 278
    .restart local p1    # "store":Lcom/smartisanos/smengine/math/Matrix3f;
    :cond_0
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v1

    div-float v0, v4, v1

    .line 283
    .local v0, "mag":F
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    mul-float/2addr v1, v0

    iput v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 284
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    mul-float/2addr v1, v0

    iput v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 285
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v1, v0

    iput v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 287
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v1

    div-float v0, v4, v1

    .line 292
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    mul-float/2addr v1, v0

    iput v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 293
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    mul-float/2addr v1, v0

    iput v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    .line 294
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v1, v0

    iput v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    .line 296
    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 297
    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 298
    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    .line 299
    return-object p1
.end method

.method public normalizeLocal()Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0, p0}, Lcom/smartisanos/smengine/math/Matrix3f;->normalize(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Matrix3f;

    move-result-object v0

    return-object v0
.end method

.method public scale(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 2
    .param p1, "scale"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 1354
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 1355
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 1356
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 1357
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 1358
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    .line 1359
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    .line 1360
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 1361
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 1362
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    .line 1363
    return-void
.end method

.method public set(IIF)Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "value"    # F

    .prologue
    .line 578
    packed-switch p1, :pswitch_data_0

    .line 617
    :goto_0
    sget-object v0, Lcom/smartisanos/smengine/math/Matrix3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Invalid matrix index."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 618
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid indices into matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    .line 592
    :pswitch_1
    packed-switch p2, :pswitch_data_2

    .line 604
    :pswitch_2
    packed-switch p2, :pswitch_data_3

    goto :goto_0

    .line 606
    :pswitch_3
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 613
    :goto_1
    return-object p0

    .line 582
    :pswitch_4
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    goto :goto_1

    .line 585
    :pswitch_5
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    goto :goto_1

    .line 588
    :pswitch_6
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    goto :goto_1

    .line 594
    :pswitch_7
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    goto :goto_1

    .line 597
    :pswitch_8
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    goto :goto_1

    .line 600
    :pswitch_9
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    goto :goto_1

    .line 609
    :pswitch_a
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    goto :goto_1

    .line 612
    :pswitch_b
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    goto :goto_1

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 580
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 592
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 604
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public set(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 1
    .param p1, "matrix"    # Lcom/smartisanos/smengine/math/Matrix3f;

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Matrix3f;->loadIdentity()V

    .line 153
    :goto_0
    return-object p0

    .line 143
    :cond_0
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 144
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 145
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 146
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 147
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    .line 148
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 149
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 150
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    .line 151
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    goto :goto_0
.end method

.method public set(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 1
    .param p1, "quaternion"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 738
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/math/Quaternion;->toRotationMatrix(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Matrix3f;

    move-result-object v0

    return-object v0
.end method

.method public set([F)Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 1
    .param p1, "matrix"    # [F

    .prologue
    .line 684
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Matrix3f;->set([FZ)Lcom/smartisanos/smengine/math/Matrix3f;

    move-result-object v0

    return-object v0
.end method

.method public set([FZ)Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 7
    .param p1, "matrix"    # [F
    .param p2, "rowMajor"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 698
    array-length v0, p1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 699
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array must be of size 9."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_0
    if-eqz p2, :cond_1

    .line 704
    aget v0, p1, v2

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 705
    aget v0, p1, v3

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 706
    aget v0, p1, v4

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 707
    aget v0, p1, v5

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 708
    aget v0, p1, v6

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    .line 709
    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 710
    const/4 v0, 0x6

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 711
    const/4 v0, 0x7

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    .line 712
    const/16 v0, 0x8

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    .line 724
    :goto_0
    return-object p0

    .line 714
    :cond_1
    aget v0, p1, v2

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 715
    aget v0, p1, v5

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 716
    const/4 v0, 0x6

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 717
    aget v0, p1, v3

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 718
    aget v0, p1, v6

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    .line 719
    const/4 v0, 0x7

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 720
    aget v0, p1, v4

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 721
    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    .line 722
    const/16 v0, 0x8

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    goto :goto_0
.end method

.method public set([[F)Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 5
    .param p1, "matrix"    # [[F

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 633
    array-length v0, p1

    if-ne v0, v4, :cond_0

    aget-object v0, p1, v1

    array-length v0, v0

    if-eq v0, v4, :cond_1

    .line 634
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array must be of size 9."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_1
    aget-object v0, p1, v1

    aget v0, v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 639
    aget-object v0, p1, v1

    aget v0, v0, v2

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 640
    aget-object v0, p1, v1

    aget v0, v0, v3

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 641
    aget-object v0, p1, v2

    aget v0, v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 642
    aget-object v0, p1, v2

    aget v0, v0, v2

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    .line 643
    aget-object v0, p1, v2

    aget v0, v0, v3

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 644
    aget-object v0, p1, v3

    aget v0, v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 645
    aget-object v0, p1, v3

    aget v0, v0, v2

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    .line 646
    aget-object v0, p1, v3

    aget v0, v0, v3

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    .line 648
    return-object p0
.end method

.method public setColumn(ILcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 3
    .param p1, "i"    # I
    .param p2, "column"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 496
    if-nez p2, :cond_0

    .line 497
    sget-object v0, Lcom/smartisanos/smengine/math/Matrix3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Column is null. Ignoring."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 520
    :goto_0
    return-object p0

    .line 500
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 517
    sget-object v0, Lcom/smartisanos/smengine/math/Matrix3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Invalid column index."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 518
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid column index. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :pswitch_0
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 503
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 504
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    goto :goto_0

    .line 507
    :pswitch_1
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 508
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    .line 509
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    goto :goto_0

    .line 512
    :pswitch_2
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 513
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 514
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    goto :goto_0

    .line 500
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setRow(ILcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 3
    .param p1, "i"    # I
    .param p2, "row"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 536
    if-nez p2, :cond_0

    .line 537
    sget-object v0, Lcom/smartisanos/smengine/math/Matrix3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Row is null. Ignoring."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 560
    :goto_0
    return-object p0

    .line 540
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 557
    sget-object v0, Lcom/smartisanos/smengine/math/Matrix3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Invalid row index."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid row index. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :pswitch_0
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 543
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 544
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    goto :goto_0

    .line 547
    :pswitch_1
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 548
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    .line 549
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    goto :goto_0

    .line 552
    :pswitch_2
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 553
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    .line 554
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    goto :goto_0

    .line 540
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Matrix3f\n(\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1152
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1154
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1156
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1158
    const-string v1, " \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1161
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1163
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1165
    const-string v1, " \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1168
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1170
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1172
    const-string v1, " \n)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public transpose()Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 1

    .prologue
    .line 1126
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Matrix3f;->transposeLocal()Lcom/smartisanos/smengine/math/Matrix3f;

    move-result-object v0

    return-object v0
.end method

.method public transposeLocal()Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 2

    .prologue
    .line 972
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 973
    .local v0, "tmp":F
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iput v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 974
    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 976
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 977
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    iput v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 978
    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 980
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 981
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    iput v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 982
    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    .line 984
    return-object p0
.end method

.method public transposeNew()Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 10

    .prologue
    .line 1135
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix3f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iget v6, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    iget v7, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v8, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iget v9, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    invoke-direct/range {v0 .. v9}, Lcom/smartisanos/smengine/math/Matrix3f;-><init>(FFFFFFFFF)V

    .line 1136
    .local v0, "ret":Lcom/smartisanos/smengine/math/Matrix3f;
    return-object v0
.end method

.method public zero()Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 1

    .prologue
    .line 1113
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 1114
    return-object p0
.end method
