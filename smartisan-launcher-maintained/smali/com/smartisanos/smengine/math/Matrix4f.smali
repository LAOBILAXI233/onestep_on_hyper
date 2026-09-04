.class public final Lcom/smartisanos/smengine/math/Matrix4f;
.super Ljava/lang/Object;
.source "Matrix4f.java"

.implements Ljava/lang/Cloneable;


.field public static final IDENTITY:Lcom/smartisanos/smengine/math/Matrix4f;

.field public static final ZERO:Lcom/smartisanos/smengine/math/Matrix4f;

.field static final serialVersionUID:J = 0x1L


.field public m00:F

.field public m01:F

.field public m02:F

.field public m03:F

.field public m10:F

.field public m11:F

.field public m12:F

.field public m13:F

.field public m20:F

.field public m21:F

.field public m22:F

.field public m23:F

.field public m30:F

.field public m31:F

.field public m32:F

.field public m33:F


.method static constructor <clinit>()V
    .locals 17

    .prologue
    .line 62
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>(FFFFFFFFFFFFFFFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Matrix4f;->ZERO:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 63
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/math/Matrix4f;->IDENTITY:Lcom/smartisanos/smengine/math/Matrix4f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Matrix4f;->loadIdentity()V

    .line 72
    return-void
.end method

.method public constructor <init>(FFFFFFFFFFFFFFFF)V
    .locals 1
    .param p1, "m00"    # F
    .param p2, "m01"    # F
    .param p3, "m02"    # F
    .param p4, "m03"    # F
    .param p5, "m10"    # F
    .param p6, "m11"    # F
    .param p7, "m12"    # F
    .param p8, "m13"    # F
    .param p9, "m20"    # F
    .param p10, "m21"    # F
    .param p11, "m22"    # F
    .param p12, "m23"    # F
    .param p13, "m30"    # F
    .param p14, "m31"    # F
    .param p15, "m32"    # F
    .param p16, "m33"    # F

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 83
    iput p2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 84
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 85
    iput p4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 86
    iput p5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 87
    iput p6, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 88
    iput p7, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 89
    iput p8, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 90
    iput p9, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 91
    iput p10, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 92
    iput p11, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 93
    iput p12, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 94
    iput p13, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 95
    iput p14, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 96
    move/from16 v0, p15

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 97
    move/from16 v0, p16

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/math/Matrix4f;)V
    .locals 0
    .param p1, "mat"    # Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Matrix4f;->copy(Lcom/smartisanos/smengine/math/Matrix4f;)V

    .line 120
    return-void
.end method

.method public constructor <init>([F)V
    .locals 1
    .param p1, "array"    # [F

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Matrix4f;->set([FZ)V

    .line 108
    return-void
.end method

.method static equalIdentity(Lcom/smartisanos/smengine/math/Matrix4f;)Z
    .locals 7
    .param p0, "mat"    # Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 2336
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 2389
    :cond_0
    :goto_0
    return v0

    .line 2339
    :cond_1
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 2342
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 2345
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 2349
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 2352
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 2355
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 2359
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 2362
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 2365
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 2369
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 2372
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 2375
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 2379
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 2382
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 2385
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 2389
    const/4 v0, 0x1

    goto/16 :goto_0
.end method


.method public add(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 3
    .param p1, "mat"    # Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 1759
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    .line 1760
    .local v0, "result":Lcom/smartisanos/smengine/math/Matrix4f;
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 1761
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 1762
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 1763
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 1764
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 1765
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 1766
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 1767
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 1768
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 1769
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 1770
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 1771
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 1772
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 1773
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 1774
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 1775
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    .line 1776
    return-object v0
.end method

.method public addLocal(Lcom/smartisanos/smengine/math/Matrix4f;)V
    .locals 2
    .param p1, "mat"    # Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 1786
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 1787
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 1788
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 1789
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 1790
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 1791
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 1792
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 1793
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 1794
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 1795
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 1796
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 1797
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 1798
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 1799
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 1800
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 1801
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    .line 1802
    return-void
.end method

.method public adjoint()Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 1

    .prologue
    .line 1604
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/math/Matrix4f;->adjoint(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v0

    return-object v0
.end method

.method public adjoint(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 16
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 1686
    if-nez p1, :cond_0

    .line 1687
    new-instance p1, Lcom/smartisanos/smengine/math/Matrix4f;

    .end local p1    # "store":Lcom/smartisanos/smengine/math/Matrix4f;
    invoke-direct/range {p1 .. p1}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    .line 1690
    .restart local p1    # "store":Lcom/smartisanos/smengine/math/Matrix4f;
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    mul-float/2addr v14, v15

    sub-float v1, v13, v14

    .line 1691
    .local v1, "fA0":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    mul-float/2addr v14, v15

    sub-float v2, v13, v14

    .line 1692
    .local v2, "fA1":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    mul-float/2addr v14, v15

    sub-float v3, v13, v14

    .line 1693
    .local v3, "fA2":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v14, v15

    sub-float v4, v13, v14

    .line 1694
    .local v4, "fA3":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v14, v15

    sub-float v5, v13, v14

    .line 1695
    .local v5, "fA4":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v14, v15

    sub-float v6, v13, v14

    .line 1696
    .local v6, "fA5":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    mul-float/2addr v14, v15

    sub-float v7, v13, v14

    .line 1697
    .local v7, "fB0":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    mul-float/2addr v14, v15

    sub-float v8, v13, v14

    .line 1698
    .local v8, "fB1":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    mul-float/2addr v14, v15

    sub-float v9, v13, v14

    .line 1699
    .local v9, "fB2":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    mul-float/2addr v14, v15

    sub-float v10, v13, v14

    .line 1700
    .local v10, "fB3":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    mul-float/2addr v14, v15

    sub-float v11, v13, v14

    .line 1701
    .local v11, "fB4":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    mul-float/2addr v14, v15

    sub-float v12, v13, v14

    .line 1703
    .local v12, "fB5":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v13, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v14, v11

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    mul-float/2addr v14, v10

    add-float/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 1704
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    neg-float v13, v13

    mul-float/2addr v13, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v14, v9

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    mul-float/2addr v14, v8

    sub-float/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 1705
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    mul-float/2addr v13, v11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v14, v9

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    mul-float/2addr v14, v7

    add-float/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 1706
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    neg-float v13, v13

    mul-float/2addr v13, v10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v14, v8

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v14, v7

    sub-float/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 1707
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    neg-float v13, v13

    mul-float/2addr v13, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    mul-float/2addr v14, v10

    sub-float/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 1708
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    mul-float/2addr v13, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    mul-float/2addr v14, v9

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    mul-float/2addr v14, v8

    add-float/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 1709
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    neg-float v13, v13

    mul-float/2addr v13, v11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    mul-float/2addr v14, v9

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    mul-float/2addr v14, v7

    sub-float/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 1710
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    mul-float/2addr v13, v10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    mul-float/2addr v14, v8

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    mul-float/2addr v14, v7

    add-float/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 1711
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    mul-float/2addr v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    mul-float/2addr v14, v5

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    mul-float/2addr v14, v4

    add-float/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 1712
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    neg-float v13, v13

    mul-float/2addr v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    mul-float/2addr v14, v3

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    mul-float/2addr v14, v2

    sub-float/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 1713
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    mul-float/2addr v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    mul-float/2addr v14, v3

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    mul-float/2addr v14, v1

    add-float/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 1714
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    neg-float v13, v13

    mul-float/2addr v13, v4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    mul-float/2addr v14, v2

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    mul-float/2addr v14, v1

    sub-float/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 1715
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    neg-float v13, v13

    mul-float/2addr v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    mul-float/2addr v14, v5

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    mul-float/2addr v14, v4

    sub-float/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 1716
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    mul-float/2addr v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    mul-float/2addr v14, v3

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    mul-float/2addr v14, v2

    add-float/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 1717
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    neg-float v13, v13

    mul-float/2addr v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    mul-float/2addr v14, v3

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    mul-float/2addr v14, v1

    sub-float/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 1718
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    mul-float/2addr v13, v4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    mul-float/2addr v14, v2

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    mul-float/2addr v14, v1

    add-float/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    .line 1720
    return-object p1
.end method

.method public angleRotation(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 11
    .param p1, "angles"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const v8, 0x3c8efa35

    const/4 v10, 0x0

    .line 1978
    iget v7, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float v0, v7, v8

    .line 1979
    .local v0, "angle":F
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v6

    .line 1980
    .local v6, "sy":F
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->cos(F)F

    move-result v3

    .line 1981
    .local v3, "cy":F
    iget v7, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float v0, v7, v8

    .line 1982
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v4

    .line 1983
    .local v4, "sp":F
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->cos(F)F

    move-result v1

    .line 1984
    .local v1, "cp":F
    iget v7, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float v0, v7, v8

    .line 1985
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v5

    .line 1986
    .local v5, "sr":F
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->cos(F)F

    move-result v2

    .line 1989
    .local v2, "cr":F
    mul-float v7, v1, v3

    iput v7, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 1990
    mul-float v7, v1, v6

    iput v7, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 1991
    neg-float v7, v4

    iput v7, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 1992
    mul-float v7, v5, v4

    mul-float/2addr v7, v3

    neg-float v8, v6

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    iput v7, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 1993
    mul-float v7, v5, v4

    mul-float/2addr v7, v6

    mul-float v8, v2, v3

    add-float/2addr v7, v8

    iput v7, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 1994
    mul-float v7, v5, v1

    iput v7, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 1995
    mul-float v7, v2, v4

    mul-float/2addr v7, v3

    neg-float v8, v5

    neg-float v9, v6

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 1996
    mul-float v7, v2, v4

    mul-float/2addr v7, v6

    neg-float v8, v5

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iput v7, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 1997
    mul-float v7, v2, v1

    iput v7, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 1998
    iput v10, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 1999
    iput v10, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 2000
    iput v10, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 2001
    return-void
.end method

.method public clone()Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 2

    .prologue
    .line 2404
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/math/Matrix4f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2405
    :catch_0
    move-exception v0

    .line 2406
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
    .line 54
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Matrix4f;->clone()Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lcom/smartisanos/smengine/math/Matrix4f;)V
    .locals 1
    .param p1, "matrix"    # Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Matrix4f;->loadIdentity()V

    .line 151
    :goto_0
    return-void

    .line 134
    :cond_0
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 135
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 136
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 137
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 138
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 139
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 140
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 141
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 142
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 143
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 144
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 145
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 146
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 147
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 148
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 149
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    goto :goto_0
.end method

.method public determinant()F
    .locals 17

    .prologue
    .line 1729
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v1, v14, v15

    .line 1730
    .local v1, "fA0":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v2, v14, v15

    .line 1731
    .local v2, "fA1":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v3, v14, v15

    .line 1732
    .local v3, "fA2":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v4, v14, v15

    .line 1733
    .local v4, "fA3":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v5, v14, v15

    .line 1734
    .local v5, "fA4":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v6, v14, v15

    .line 1735
    .local v6, "fA5":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v7, v14, v15

    .line 1736
    .local v7, "fB0":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v8, v14, v15

    .line 1737
    .local v8, "fB1":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v9, v14, v15

    .line 1738
    .local v9, "fB2":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v10, v14, v15

    .line 1739
    .local v10, "fB3":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v11, v14, v15

    .line 1740
    .local v11, "fB4":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v12, v14, v15

    .line 1741
    .local v12, "fB5":F
    mul-float v14, v1, v12

    mul-float v15, v2, v11

    sub-float/2addr v14, v15

    mul-float v15, v3, v10

    add-float/2addr v14, v15

    mul-float v15, v4, v9

    add-float/2addr v14, v15

    mul-float v15, v5, v8

    sub-float/2addr v14, v15

    mul-float v15, v6, v7

    add-float v13, v14, v15

    .line 1742
    .local v13, "fDet":F
    return v13
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2238
    instance-of v3, p1, Lcom/smartisanos/smengine/math/Matrix4f;

    if-eqz v3, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v1, v2

    .line 2299
    :cond_1
    :goto_0
    return v1

    .line 2242
    :cond_2
    if-eq p0, p1, :cond_1

    move-object v0, p1

    .line 2246
    check-cast v0, Lcom/smartisanos/smengine/math/Matrix4f;

    .line 2247
    .local v0, "comp":Lcom/smartisanos/smengine/math/Matrix4f;
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 2248
    goto :goto_0

    .line 2250
    :cond_3
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 2251
    goto :goto_0

    .line 2253
    :cond_4
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 2254
    goto :goto_0

    .line 2256
    :cond_5
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    .line 2257
    goto :goto_0

    .line 2260
    :cond_6
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_7

    move v1, v2

    .line 2261
    goto :goto_0

    .line 2263
    :cond_7
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_8

    move v1, v2

    .line 2264
    goto :goto_0

    .line 2266
    :cond_8
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_9

    move v1, v2

    .line 2267
    goto :goto_0

    .line 2269
    :cond_9
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_a

    move v1, v2

    .line 2270
    goto :goto_0

    .line 2273
    :cond_a
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_b

    move v1, v2

    .line 2274
    goto :goto_0

    .line 2276
    :cond_b
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_c

    move v1, v2

    .line 2277
    goto :goto_0

    .line 2279
    :cond_c
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_d

    move v1, v2

    .line 2280
    goto/16 :goto_0

    .line 2282
    :cond_d
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_e

    move v1, v2

    .line 2283
    goto/16 :goto_0

    .line 2286
    :cond_e
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_f

    move v1, v2

    .line 2287
    goto/16 :goto_0

    .line 2289
    :cond_f
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_10

    move v1, v2

    .line 2290
    goto/16 :goto_0

    .line 2292
    :cond_10
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_11

    move v1, v2

    .line 2293
    goto/16 :goto_0

    .line 2295
    :cond_11
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 2296
    goto/16 :goto_0
.end method

.method public fillFloatArray([FIZ)V
    .locals 2
    .param p1, "f"    # [F
    .param p2, "offset"    # I
    .param p3, "columnMajor"    # Z

    .prologue
    .line 780
    if-eqz p3, :cond_0

    .line 781
    add-int/lit8 v0, p2, 0x0

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    aput v1, p1, v0

    .line 782
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    aput v1, p1, v0

    .line 783
    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    aput v1, p1, v0

    .line 784
    add-int/lit8 v0, p2, 0x3

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    aput v1, p1, v0

    .line 785
    add-int/lit8 v0, p2, 0x4

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    aput v1, p1, v0

    .line 786
    add-int/lit8 v0, p2, 0x5

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    aput v1, p1, v0

    .line 787
    add-int/lit8 v0, p2, 0x6

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    aput v1, p1, v0

    .line 788
    add-int/lit8 v0, p2, 0x7

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    aput v1, p1, v0

    .line 789
    add-int/lit8 v0, p2, 0x8

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    aput v1, p1, v0

    .line 790
    add-int/lit8 v0, p2, 0x9

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    aput v1, p1, v0

    .line 791
    add-int/lit8 v0, p2, 0xa

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    aput v1, p1, v0

    .line 792
    add-int/lit8 v0, p2, 0xb

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    aput v1, p1, v0

    .line 793
    add-int/lit8 v0, p2, 0xc

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    aput v1, p1, v0

    .line 794
    add-int/lit8 v0, p2, 0xd

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    aput v1, p1, v0

    .line 795
    add-int/lit8 v0, p2, 0xe

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    aput v1, p1, v0

    .line 796
    add-int/lit8 v0, p2, 0xf

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    aput v1, p1, v0

    .line 815
    :goto_0
    return-void

    .line 798
    :cond_0
    add-int/lit8 v0, p2, 0x0

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    aput v1, p1, v0

    .line 799
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    aput v1, p1, v0

    .line 800
    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    aput v1, p1, v0

    .line 801
    add-int/lit8 v0, p2, 0x3

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    aput v1, p1, v0

    .line 802
    add-int/lit8 v0, p2, 0x4

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    aput v1, p1, v0

    .line 803
    add-int/lit8 v0, p2, 0x5

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    aput v1, p1, v0

    .line 804
    add-int/lit8 v0, p2, 0x6

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    aput v1, p1, v0

    .line 805
    add-int/lit8 v0, p2, 0x7

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    aput v1, p1, v0

    .line 806
    add-int/lit8 v0, p2, 0x8

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    aput v1, p1, v0

    .line 807
    add-int/lit8 v0, p2, 0x9

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    aput v1, p1, v0

    .line 808
    add-int/lit8 v0, p2, 0xa

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    aput v1, p1, v0

    .line 809
    add-int/lit8 v0, p2, 0xb

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    aput v1, p1, v0

    .line 810
    add-int/lit8 v0, p2, 0xc

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    aput v1, p1, v0

    .line 811
    add-int/lit8 v0, p2, 0xd

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    aput v1, p1, v0

    .line 812
    add-int/lit8 v0, p2, 0xe

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    aput v1, p1, v0

    .line 813
    add-int/lit8 v0, p2, 0xf

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    aput v1, p1, v0

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

    .line 817
    if-eqz p2, :cond_0

    .line 818
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    aput v0, p1, v1

    .line 819
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    aput v0, p1, v2

    .line 820
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    aput v0, p1, v3

    .line 821
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    aput v0, p1, v4

    .line 822
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    aput v0, p1, v5

    .line 823
    const/4 v0, 0x5

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    aput v1, p1, v0

    .line 824
    const/4 v0, 0x6

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    aput v1, p1, v0

    .line 825
    const/4 v0, 0x7

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    aput v1, p1, v0

    .line 826
    const/16 v0, 0x8

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    aput v1, p1, v0

    .line 827
    const/16 v0, 0x9

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    aput v1, p1, v0

    .line 828
    const/16 v0, 0xa

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    aput v1, p1, v0

    .line 829
    const/16 v0, 0xb

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    aput v1, p1, v0

    .line 830
    const/16 v0, 0xc

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    aput v1, p1, v0

    .line 831
    const/16 v0, 0xd

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    aput v1, p1, v0

    .line 832
    const/16 v0, 0xe

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    aput v1, p1, v0

    .line 833
    const/16 v0, 0xf

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    aput v1, p1, v0

    .line 852
    :goto_0
    return-void

    .line 835
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    aput v0, p1, v1

    .line 836
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    aput v0, p1, v2

    .line 837
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    aput v0, p1, v3

    .line 838
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    aput v0, p1, v4

    .line 839
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    aput v0, p1, v5

    .line 840
    const/4 v0, 0x5

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    aput v1, p1, v0

    .line 841
    const/4 v0, 0x6

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    aput v1, p1, v0

    .line 842
    const/4 v0, 0x7

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    aput v1, p1, v0

    .line 843
    const/16 v0, 0x8

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    aput v1, p1, v0

    .line 844
    const/16 v0, 0x9

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    aput v1, p1, v0

    .line 845
    const/16 v0, 0xa

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    aput v1, p1, v0

    .line 846
    const/16 v0, 0xb

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    aput v1, p1, v0

    .line 847
    const/16 v0, 0xc

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    aput v1, p1, v0

    .line 848
    const/16 v0, 0xd

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    aput v1, p1, v0

    .line 849
    const/16 v0, 0xe

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    aput v1, p1, v0

    .line 850
    const/16 v0, 0xf

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    aput v1, p1, v0

    goto :goto_0
.end method

.method public fillFloatBuffer(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 1
    .param p1, "fb"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 740
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Matrix4f;->fillFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public fillFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;
    .locals 4
    .param p1, "fb"    # Ljava/nio/FloatBuffer;
    .param p2, "columnMajor"    # Z

    .prologue
    .line 769
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v0

    .line 772
    .local v0, "vars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->matrixWrite:[F

    invoke-virtual {p0, v1, p2}, Lcom/smartisanos/smengine/math/Matrix4f;->fillFloatArray([FZ)V

    .line 773
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->matrixWrite:[F

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 775
    invoke-virtual {v0}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 777
    return-object p1
.end method

.method public fromAngleAxis(FLcom/smartisanos/smengine/math/Vector3f;)V
    .locals 1
    .param p1, "angle"    # F
    .param p2, "axis"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 969
    invoke-virtual {p2}, Lcom/smartisanos/smengine/math/Vector3f;->normalize()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    .line 970
    .local v0, "normAxis":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Matrix4f;->fromAngleNormalAxis(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 971
    return-void
.end method

.method public fromAngleNormalAxis(FLcom/smartisanos/smengine/math/Vector3f;)V
    .locals 15
    .param p1, "angle"    # F
    .param p2, "axis"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 983
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Matrix4f;->zero()Lcom/smartisanos/smengine/math/Matrix4f;

    .line 984
    const/high16 v13, 0x3f800000    # 1.0f

    iput v13, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    .line 986
    invoke-static/range {p1 .. p1}, Lcom/smartisanos/smengine/math/FastMath;->cos(F)F

    move-result v1

    .line 987
    .local v1, "fCos":F
    invoke-static/range {p1 .. p1}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v3

    .line 988
    .local v3, "fSin":F
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v2, v13, v1

    .line 989
    .local v2, "fOneMinusCos":F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p2

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float v4, v13, v14

    .line 990
    .local v4, "fX2":F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p2

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float v8, v13, v14

    .line 991
    .local v8, "fY2":F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, p2

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float v11, v13, v14

    .line 992
    .local v11, "fZ2":F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p2

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v13, v14

    mul-float v6, v13, v2

    .line 993
    .local v6, "fXYM":F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p2

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v13, v14

    mul-float v7, v13, v2

    .line 994
    .local v7, "fXZM":F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p2

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v13, v14

    mul-float v10, v13, v2

    .line 995
    .local v10, "fYZM":F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float v5, v13, v3

    .line 996
    .local v5, "fXSin":F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float v9, v13, v3

    .line 997
    .local v9, "fYSin":F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float v12, v13, v3

    .line 999
    .local v12, "fZSin":F
    mul-float v13, v4, v2

    add-float/2addr v13, v1

    iput v13, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 1000
    sub-float v13, v6, v12

    iput v13, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 1001
    add-float v13, v7, v9

    iput v13, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 1002
    add-float v13, v6, v12

    iput v13, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 1003
    mul-float v13, v8, v2

    add-float/2addr v13, v1

    iput v13, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 1004
    sub-float v13, v10, v5

    iput v13, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 1005
    sub-float v13, v7, v9

    iput v13, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 1006
    add-float v13, v10, v5

    iput v13, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 1007
    mul-float v13, v11, v2

    add-float/2addr v13, v1

    iput v13, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 1008
    return-void
.end method

.method public fromFrame(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 6
    .param p1, "location"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "direction"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "up"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p4, "left"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Matrix4f;->loadIdentity()V

    .line 156
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v4

    .line 158
    .local v4, "vars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v5, v4, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v5, p2}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    .line 159
    .local v0, "f":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v5, v4, Lcom/smartisanos/smengine/util/TempVars;->vect2:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/smartisanos/smengine/math/Vector3f;->crossLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    .line 160
    .local v1, "s":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v5, v4, Lcom/smartisanos/smengine/util/TempVars;->vect3:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/math/Vector3f;->crossLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    .line 164
    .local v3, "u":Lcom/smartisanos/smengine/math/Vector3f;
    iget v5, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 165
    iget v5, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 166
    iget v5, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 168
    iget v5, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 169
    iget v5, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 170
    iget v5, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 172
    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    neg-float v5, v5

    iput v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 173
    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    neg-float v5, v5

    iput v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 174
    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    neg-float v5, v5

    iput v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 189
    iget-object v2, v4, Lcom/smartisanos/smengine/util/TempVars;->tempMat4:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 190
    .local v2, "transMatrix":Lcom/smartisanos/smengine/math/Matrix4f;
    invoke-virtual {v2}, Lcom/smartisanos/smengine/math/Matrix4f;->loadIdentity()V

    .line 191
    iget v5, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    neg-float v5, v5

    iput v5, v2, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 192
    iget v5, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    neg-float v5, v5

    iput v5, v2, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 193
    iget v5, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    neg-float v5, v5

    iput v5, v2, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 194
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/math/Matrix4f;->multLocal(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    .line 196
    invoke-virtual {v4}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 201
    return-void
.end method

.method public fromFrustum(FFFFFFZ)V
    .locals 3
    .param p1, "near"    # F
    .param p2, "far"    # F
    .param p3, "left"    # F
    .param p4, "right"    # F
    .param p5, "top"    # F
    .param p6, "bottom"    # F
    .param p7, "parallel"    # Z

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 924
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Matrix4f;->loadIdentity()V

    .line 925
    if-eqz p7, :cond_0

    .line 927
    sub-float v0, p4, p3

    div-float v0, v2, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 929
    sub-float v0, p5, p6

    div-float v0, v2, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 930
    const/high16 v0, -0x40000000    # -2.0f

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 931
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    .line 934
    add-float v0, p4, p3

    neg-float v0, v0

    sub-float v1, p4, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 936
    add-float v0, p5, p6

    neg-float v0, v0

    sub-float v1, p5, p6

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 937
    add-float v0, p2, p1

    neg-float v0, v0

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 956
    :goto_0
    return-void

    .line 939
    :cond_0
    mul-float v0, v2, p1

    sub-float v1, p4, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 940
    mul-float v0, v2, p1

    sub-float v1, p5, p6

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 941
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 942
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    .line 945
    add-float v0, p4, p3

    sub-float v1, p4, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 948
    add-float v0, p5, p6

    sub-float v1, p5, p6

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 951
    add-float v0, p2, p1

    neg-float v0, v0

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 954
    mul-float v0, v2, p2

    mul-float/2addr v0, p1

    neg-float v0, v0

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    goto :goto_0
.end method

.method public get(II)F
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 279
    packed-switch p1, :pswitch_data_0

    .line 326
    :goto_0
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Invalid matrix index."

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid indices into matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    .line 292
    :pswitch_1
    packed-switch p2, :pswitch_data_2

    .line 303
    :pswitch_2
    packed-switch p2, :pswitch_data_3

    .line 314
    :pswitch_3
    packed-switch p2, :pswitch_data_4

    goto :goto_0

    .line 316
    :pswitch_4
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 322
    :goto_1
    return v0

    .line 283
    :pswitch_5
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    goto :goto_1

    .line 285
    :pswitch_6
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    goto :goto_1

    .line 287
    :pswitch_7
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    goto :goto_1

    .line 289
    :pswitch_8
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    goto :goto_1

    .line 294
    :pswitch_9
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    goto :goto_1

    .line 296
    :pswitch_a
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    goto :goto_1

    .line 298
    :pswitch_b
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    goto :goto_1

    .line 300
    :pswitch_c
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    goto :goto_1

    .line 305
    :pswitch_d
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    goto :goto_1

    .line 307
    :pswitch_e
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    goto :goto_1

    .line 309
    :pswitch_f
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    goto :goto_1

    .line 311
    :pswitch_10
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    goto :goto_1

    .line 318
    :pswitch_11
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    goto :goto_1

    .line 320
    :pswitch_12
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    goto :goto_1

    .line 322
    :pswitch_13
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    goto :goto_1

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 281
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 292
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 303
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 314
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public get([F)V
    .locals 1
    .param p1, "matrix"    # [F

    .prologue
    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Matrix4f;->get([FZ)V

    .line 212
    return-void
.end method

.method public get([FZ)V
    .locals 7
    .param p1, "matrix"    # [F
    .param p2, "rowMajor"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 224
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array must be of size 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    if-eqz p2, :cond_1

    .line 230
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    aput v0, p1, v2

    .line 231
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    aput v0, p1, v3

    .line 232
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    aput v0, p1, v4

    .line 233
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    aput v0, p1, v5

    .line 234
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    aput v0, p1, v6

    .line 235
    const/4 v0, 0x5

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    aput v1, p1, v0

    .line 236
    const/4 v0, 0x6

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    aput v1, p1, v0

    .line 237
    const/4 v0, 0x7

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    aput v1, p1, v0

    .line 238
    const/16 v0, 0x8

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    aput v1, p1, v0

    .line 239
    const/16 v0, 0x9

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    aput v1, p1, v0

    .line 240
    const/16 v0, 0xa

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    aput v1, p1, v0

    .line 241
    const/16 v0, 0xb

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    aput v1, p1, v0

    .line 242
    const/16 v0, 0xc

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    aput v1, p1, v0

    .line 243
    const/16 v0, 0xd

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    aput v1, p1, v0

    .line 244
    const/16 v0, 0xe

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    aput v1, p1, v0

    .line 245
    const/16 v0, 0xf

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    aput v1, p1, v0

    .line 264
    :goto_0
    return-void

    .line 247
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    aput v0, p1, v2

    .line 248
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    aput v0, p1, v6

    .line 249
    const/16 v0, 0x8

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    aput v1, p1, v0

    .line 250
    const/16 v0, 0xc

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    aput v1, p1, v0

    .line 251
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    aput v0, p1, v3

    .line 252
    const/4 v0, 0x5

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    aput v1, p1, v0

    .line 253
    const/16 v0, 0x9

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    aput v1, p1, v0

    .line 254
    const/16 v0, 0xd

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    aput v1, p1, v0

    .line 255
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    aput v0, p1, v4

    .line 256
    const/4 v0, 0x6

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    aput v1, p1, v0

    .line 257
    const/16 v0, 0xa

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    aput v1, p1, v0

    .line 258
    const/16 v0, 0xe

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    aput v1, p1, v0

    .line 259
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    aput v0, p1, v5

    .line 260
    const/4 v0, 0x7

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    aput v1, p1, v0

    .line 261
    const/16 v0, 0xb

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    aput v1, p1, v0

    .line 262
    const/16 v0, 0xf

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    aput v1, p1, v0

    goto :goto_0
.end method

.method public getColumn(I)[F
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Matrix4f;->getColumn(I[F)[F

    move-result-object v0

    return-object v0
.end method

.method public getColumn(I[F)[F
    .locals 5
    .param p1, "i"    # I
    .param p2, "store"    # [F

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 354
    if-nez p2, :cond_0

    .line 355
    const/4 v0, 0x4

    new-array p2, v0, [F

    .line 357
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 383
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Invalid column index."

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 384
    :cond_1
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

    .line 359
    :pswitch_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    aput v0, p2, v1

    .line 360
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    aput v0, p2, v2

    .line 361
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    aput v0, p2, v3

    .line 362
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    aput v0, p2, v4

    .line 386
    :goto_0
    return-object p2

    .line 365
    :pswitch_1
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    aput v0, p2, v1

    .line 366
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    aput v0, p2, v2

    .line 367
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    aput v0, p2, v3

    .line 368
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    aput v0, p2, v4

    goto :goto_0

    .line 371
    :pswitch_2
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    aput v0, p2, v1

    .line 372
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    aput v0, p2, v2

    .line 373
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    aput v0, p2, v3

    .line 374
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    aput v0, p2, v4

    goto :goto_0

    .line 377
    :pswitch_3
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    aput v0, p2, v1

    .line 378
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    aput v0, p2, v2

    .line 379
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    aput v0, p2, v3

    .line 380
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    aput v0, p2, v4

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2205
    const/16 v0, 0x25

    .line 2206
    .local v0, "hash":I
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x559

    .line 2207
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2208
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2209
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2211
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2212
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2213
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2214
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2216
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2217
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2218
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2219
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2221
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2222
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2223
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2224
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2226
    return v0
.end method

.method public inverseRotateVect(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 5
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 2126
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .local v0, "vx":F
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .local v1, "vy":F
    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 2128
    .local v2, "vz":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 2129
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 2130
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 2131
    return-void
.end method

.method public inverseTranslateVect(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 2
    .param p1, "data"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 2098
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 2099
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 2100
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 2101
    return-void
.end method

.method public inverseTranslateVect([F)V
    .locals 5
    .param p1, "vec"    # [F

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2079
    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2080
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "vec must be of size 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2084
    :cond_0
    aget v0, p1, v2

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    sub-float/2addr v0, v1

    aput v0, p1, v2

    .line 2085
    aget v0, p1, v3

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    sub-float/2addr v0, v1

    aput v0, p1, v3

    .line 2086
    aget v0, p1, v4

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    sub-float/2addr v0, v1

    aput v0, p1, v4

    .line 2087
    return-void
.end method

.method public invert()Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 1

    .prologue
    .line 1479
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/math/Matrix4f;->invert(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v0

    return-object v0
.end method

.method public invert(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 18
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 1488
    if-nez p1, :cond_0

    .line 1489
    new-instance p1, Lcom/smartisanos/smengine/math/Matrix4f;

    .end local p1    # "store":Lcom/smartisanos/smengine/math/Matrix4f;
    invoke-direct/range {p1 .. p1}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    .line 1492
    .restart local p1    # "store":Lcom/smartisanos/smengine/math/Matrix4f;
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v1, v15, v16

    .line 1493
    .local v1, "fA0":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v2, v15, v16

    .line 1494
    .local v2, "fA1":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v3, v15, v16

    .line 1495
    .local v3, "fA2":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v4, v15, v16

    .line 1496
    .local v4, "fA3":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v5, v15, v16

    .line 1497
    .local v5, "fA4":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v6, v15, v16

    .line 1498
    .local v6, "fA5":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v7, v15, v16

    .line 1499
    .local v7, "fB0":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v8, v15, v16

    .line 1500
    .local v8, "fB1":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v9, v15, v16

    .line 1501
    .local v9, "fB2":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v10, v15, v16

    .line 1502
    .local v10, "fB3":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v11, v15, v16

    .line 1503
    .local v11, "fB4":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v12, v15, v16

    .line 1504
    .local v12, "fB5":F
    mul-float v15, v1, v12

    mul-float v16, v2, v11

    sub-float v15, v15, v16

    mul-float v16, v3, v10

    add-float v15, v15, v16

    mul-float v16, v4, v9

    add-float v15, v15, v16

    mul-float v16, v5, v8

    sub-float v15, v15, v16

    mul-float v16, v6, v7

    add-float v13, v15, v16

    .line 1506
    .local v13, "fDet":F
    invoke-static {v13}, Lcom/smartisanos/smengine/math/FastMath;->abs(F)F

    move-result v15

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_1

    .line 1507
    new-instance v15, Ljava/lang/ArithmeticException;

    const-string v16, "This matrix cannot be inverted"

    invoke-direct/range {v15 .. v16}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1510
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v16, v0

    mul-float v16, v16, v11

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v16, v0

    mul-float v16, v16, v10

    add-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 1511
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    neg-float v15, v15

    mul-float/2addr v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v16, v0

    mul-float v16, v16, v8

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 1512
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    mul-float/2addr v15, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v16, v0

    mul-float v16, v16, v7

    add-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 1513
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    neg-float v15, v15

    mul-float/2addr v15, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v16, v0

    mul-float v16, v16, v8

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v16, v0

    mul-float v16, v16, v7

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 1514
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    neg-float v15, v15

    mul-float/2addr v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move/from16 v16, v0

    mul-float v16, v16, v11

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v16, v0

    mul-float v16, v16, v10

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 1515
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    mul-float/2addr v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v16, v0

    mul-float v16, v16, v8

    add-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 1516
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    neg-float v15, v15

    mul-float/2addr v15, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v16, v0

    mul-float v16, v16, v7

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 1517
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    mul-float/2addr v15, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move/from16 v16, v0

    mul-float v16, v16, v8

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move/from16 v16, v0

    mul-float v16, v16, v7

    add-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 1518
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    mul-float/2addr v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v16, v0

    mul-float v16, v16, v5

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v16, v0

    mul-float v16, v16, v4

    add-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 1519
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    neg-float v15, v15

    mul-float/2addr v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v16, v0

    mul-float v16, v16, v3

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v16, v0

    mul-float v16, v16, v2

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 1520
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    mul-float/2addr v15, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v16, v0

    mul-float v16, v16, v3

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v16, v0

    mul-float v16, v16, v1

    add-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 1521
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    neg-float v15, v15

    mul-float/2addr v15, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v16, v0

    mul-float v16, v16, v2

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v16, v0

    mul-float v16, v16, v1

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 1522
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    neg-float v15, v15

    mul-float/2addr v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move/from16 v16, v0

    mul-float v16, v16, v5

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v16, v0

    mul-float v16, v16, v4

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 1523
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    mul-float/2addr v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move/from16 v16, v0

    mul-float v16, v16, v3

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v16, v0

    mul-float v16, v16, v2

    add-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 1524
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    neg-float v15, v15

    mul-float/2addr v15, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move/from16 v16, v0

    mul-float v16, v16, v3

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v16, v0

    mul-float v16, v16, v1

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 1525
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    mul-float/2addr v15, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move/from16 v16, v0

    mul-float v16, v16, v2

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move/from16 v16, v0

    mul-float v16, v16, v1

    add-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    .line 1527
    const/high16 v15, 0x3f800000    # 1.0f

    div-float v14, v15, v13

    .line 1528
    .local v14, "fInvDet":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/smartisanos/smengine/math/Matrix4f;->multLocal(F)V

    .line 1530
    return-object p1
.end method

.method public invertLocal()Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 35

    .prologue
    .line 1540
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v18, v32, v33

    .line 1541
    .local v18, "fA0":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v19, v32, v33

    .line 1542
    .local v19, "fA1":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v20, v32, v33

    .line 1543
    .local v20, "fA2":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v21, v32, v33

    .line 1544
    .local v21, "fA3":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v22, v32, v33

    .line 1545
    .local v22, "fA4":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v23, v32, v33

    .line 1546
    .local v23, "fA5":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v24, v32, v33

    .line 1547
    .local v24, "fB0":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v25, v32, v33

    .line 1548
    .local v25, "fB1":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v26, v32, v33

    .line 1549
    .local v26, "fB2":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v27, v32, v33

    .line 1550
    .local v27, "fB3":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v28, v32, v33

    .line 1551
    .local v28, "fB4":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v29, v32, v33

    .line 1552
    .local v29, "fB5":F
    mul-float v32, v18, v29

    mul-float v33, v19, v28

    sub-float v32, v32, v33

    mul-float v33, v20, v27

    add-float v32, v32, v33

    mul-float v33, v21, v26

    add-float v32, v32, v33

    mul-float v33, v22, v25

    sub-float v32, v32, v33

    mul-float v33, v23, v24

    add-float v30, v32, v33

    .line 1554
    .local v30, "fDet":F
    invoke-static/range {v30 .. v30}, Lcom/smartisanos/smengine/math/FastMath;->abs(F)F

    move-result v32

    const/16 v33, 0x0

    cmpg-float v32, v32, v33

    if-gtz v32, :cond_0

    .line 1555
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/math/Matrix4f;->zero()Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object p0

    .line 1595
    .end local p0    # "this":Lcom/smartisanos/smengine/math/Matrix4f;
    :goto_0
    return-object p0

    .line 1558
    .restart local p0    # "this":Lcom/smartisanos/smengine/math/Matrix4f;
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v32, v0

    mul-float v32, v32, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v33, v0

    mul-float v33, v33, v28

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v33, v0

    mul-float v33, v33, v27

    add-float v2, v32, v33

    .line 1559
    .local v2, "f00":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v33, v0

    mul-float v33, v33, v26

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v33, v0

    mul-float v33, v33, v25

    sub-float v6, v32, v33

    .line 1560
    .local v6, "f10":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v32, v0

    mul-float v32, v32, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v33, v0

    mul-float v33, v33, v26

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v33, v0

    mul-float v33, v33, v24

    add-float v10, v32, v33

    .line 1561
    .local v10, "f20":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v33, v0

    mul-float v33, v33, v25

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v33, v0

    mul-float v33, v33, v24

    sub-float v14, v32, v33

    .line 1562
    .local v14, "f30":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move/from16 v33, v0

    mul-float v33, v33, v28

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v33, v0

    mul-float v33, v33, v27

    sub-float v3, v32, v33

    .line 1563
    .local v3, "f01":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move/from16 v32, v0

    mul-float v32, v32, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move/from16 v33, v0

    mul-float v33, v33, v26

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v33, v0

    mul-float v33, v33, v25

    add-float v7, v32, v33

    .line 1564
    .local v7, "f11":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move/from16 v33, v0

    mul-float v33, v33, v26

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v33, v0

    mul-float v33, v33, v24

    sub-float v11, v32, v33

    .line 1565
    .local v11, "f21":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move/from16 v32, v0

    mul-float v32, v32, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move/from16 v33, v0

    mul-float v33, v33, v25

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move/from16 v33, v0

    mul-float v33, v33, v24

    add-float v15, v32, v33

    .line 1566
    .local v15, "f31":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v32, v0

    mul-float v32, v32, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v33, v0

    mul-float v33, v33, v22

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v33, v0

    mul-float v33, v33, v21

    add-float v4, v32, v33

    .line 1567
    .local v4, "f02":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v33, v0

    mul-float v33, v33, v20

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v33, v0

    mul-float v33, v33, v19

    sub-float v8, v32, v33

    .line 1568
    .local v8, "f12":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v32, v0

    mul-float v32, v32, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v33, v0

    mul-float v33, v33, v20

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v33, v0

    mul-float v33, v33, v18

    add-float v12, v32, v33

    .line 1569
    .local v12, "f22":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v33, v0

    mul-float v33, v33, v19

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v33, v0

    mul-float v33, v33, v18

    sub-float v16, v32, v33

    .line 1570
    .local v16, "f32":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move/from16 v33, v0

    mul-float v33, v33, v22

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v33, v0

    mul-float v33, v33, v21

    sub-float v5, v32, v33

    .line 1571
    .local v5, "f03":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move/from16 v32, v0

    mul-float v32, v32, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move/from16 v33, v0

    mul-float v33, v33, v20

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v33, v0

    mul-float v33, v33, v19

    add-float v9, v32, v33

    .line 1572
    .local v9, "f13":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move/from16 v33, v0

    mul-float v33, v33, v20

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v33, v0

    mul-float v33, v33, v18

    sub-float v13, v32, v33

    .line 1573
    .local v13, "f23":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move/from16 v32, v0

    mul-float v32, v32, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move/from16 v33, v0

    mul-float v33, v33, v19

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move/from16 v33, v0

    mul-float v33, v33, v18

    add-float v17, v32, v33

    .line 1575
    .local v17, "f33":F
    move-object/from16 v0, p0

    iput v2, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 1576
    move-object/from16 v0, p0

    iput v3, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 1577
    move-object/from16 v0, p0

    iput v4, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 1578
    move-object/from16 v0, p0

    iput v5, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 1579
    move-object/from16 v0, p0

    iput v6, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 1580
    move-object/from16 v0, p0

    iput v7, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 1581
    move-object/from16 v0, p0

    iput v8, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 1582
    move-object/from16 v0, p0

    iput v9, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 1583
    move-object/from16 v0, p0

    iput v10, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 1584
    move-object/from16 v0, p0

    iput v11, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 1585
    move-object/from16 v0, p0

    iput v12, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 1586
    move-object/from16 v0, p0

    iput v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 1587
    move-object/from16 v0, p0

    iput v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 1588
    move-object/from16 v0, p0

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 1589
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 1590
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    .line 1592
    const/high16 v32, 0x3f800000    # 1.0f

    div-float v31, v32, v30

    .line 1593
    .local v31, "fInvDet":F
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Matrix4f;->multLocal(F)V

    goto/16 :goto_0
.end method

.method public isIdentity()Z
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 2308
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

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
    const/4 v0, 0x0

    .line 916
    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 917
    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 918
    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 919
    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 920
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 921
    return-void
.end method

.method public mult(F)Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 1
    .param p1, "scalar"    # F

    .prologue
    .line 1036
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    .line 1037
    .local v0, "out":Lcom/smartisanos/smengine/math/Matrix4f;
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/math/Matrix4f;->set(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    .line 1038
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/math/Matrix4f;->multLocal(F)V

    .line 1039
    return-object v0
.end method

.method public mult(FLcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 0
    .param p1, "scalar"    # F
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 1043
    invoke-virtual {p2, p0}, Lcom/smartisanos/smengine/math/Matrix4f;->set(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    .line 1044
    invoke-virtual {p2, p1}, Lcom/smartisanos/smengine/math/Matrix4f;->multLocal(F)V

    .line 1045
    return-object p2
.end method

.method public mult(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 1
    .param p1, "in2"    # Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 1058
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Matrix4f;Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v0

    return-object v0
.end method

.method public mult(Lcom/smartisanos/smengine/math/Matrix4f;Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 21
    .param p1, "in2"    # Lcom/smartisanos/smengine/math/Matrix4f;
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 1074
    if-nez p2, :cond_0

    .line 1075
    new-instance p2, Lcom/smartisanos/smengine/math/Matrix4f;

    .end local p2    # "store":Lcom/smartisanos/smengine/math/Matrix4f;
    invoke-direct/range {p2 .. p2}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    .line 1083
    .restart local p2    # "store":Lcom/smartisanos/smengine/math/Matrix4f;
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v2, v18, v19

    .line 1087
    .local v2, "temp00":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v3, v18, v19

    .line 1091
    .local v3, "temp01":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v4, v18, v19

    .line 1095
    .local v4, "temp02":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v5, v18, v19

    .line 1100
    .local v5, "temp03":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v6, v18, v19

    .line 1104
    .local v6, "temp10":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v7, v18, v19

    .line 1108
    .local v7, "temp11":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v8, v18, v19

    .line 1112
    .local v8, "temp12":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v9, v18, v19

    .line 1117
    .local v9, "temp13":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v10, v18, v19

    .line 1121
    .local v10, "temp20":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v11, v18, v19

    .line 1125
    .local v11, "temp21":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v12, v18, v19

    .line 1129
    .local v12, "temp22":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v13, v18, v19

    .line 1134
    .local v13, "temp23":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v14, v18, v19

    .line 1138
    .local v14, "temp30":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v15, v18, v19

    .line 1142
    .local v15, "temp31":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v16, v18, v19

    .line 1146
    .local v16, "temp32":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v17, v18, v19

    .line 1151
    .local v17, "temp33":F
    move-object/from16 v0, p2

    iput v2, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 1152
    move-object/from16 v0, p2

    iput v3, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 1153
    move-object/from16 v0, p2

    iput v4, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 1154
    move-object/from16 v0, p2

    iput v5, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 1155
    move-object/from16 v0, p2

    iput v6, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 1156
    move-object/from16 v0, p2

    iput v7, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 1157
    move-object/from16 v0, p2

    iput v8, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 1158
    move-object/from16 v0, p2

    iput v9, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 1159
    move-object/from16 v0, p2

    iput v10, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 1160
    move-object/from16 v0, p2

    iput v11, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 1161
    move-object/from16 v0, p2

    iput v12, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 1162
    move-object/from16 v0, p2

    iput v13, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 1163
    move-object/from16 v0, p2

    iput v14, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 1164
    move-object/from16 v0, p2

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 1165
    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 1166
    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    .line 1168
    return-object p2
.end method

.method public mult(Lcom/smartisanos/smengine/math/Quaternion;Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 7
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Quaternion;
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 1405
    if-nez p1, :cond_1

    .line 1406
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "Source vector is null, null result returned."

    invoke-static {v4}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 1407
    :cond_0
    const/4 v4, 0x0

    .line 1422
    :goto_0
    return-object v4

    .line 1409
    :cond_1
    if-nez p2, :cond_2

    .line 1410
    new-instance p2, Lcom/smartisanos/smengine/math/Quaternion;

    .end local p2    # "store":Lcom/smartisanos/smengine/math/Quaternion;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Quaternion;-><init>()V

    .line 1413
    .restart local p2    # "store":Lcom/smartisanos/smengine/math/Quaternion;
    :cond_2
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 1414
    .local v1, "x":F
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 1415
    .local v2, "y":F
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 1416
    .local v3, "z":F
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v5, v6

    add-float v0, v4, v5

    .line 1417
    .local v0, "w":F
    iput v1, p2, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 1418
    iput v2, p2, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 1419
    iput v3, p2, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 1420
    iput v0, p2, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    move-object v4, p2

    .line 1422
    goto :goto_0
.end method

.method public mult(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 1194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public mult(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 5
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 1208
    if-nez p2, :cond_0

    .line 1209
    new-instance p2, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1212
    .restart local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .local v0, "vx":F
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .local v1, "vy":F
    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1213
    .local v2, "vz":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 1214
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1215
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1217
    return-object p2
.end method

.method public mult(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 1229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v0

    return-object v0
.end method

.method public mult(Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 6
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 1243
    if-nez p1, :cond_1

    .line 1244
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "Source vector is null, null result returned."

    invoke-static {v4}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 1245
    :cond_0
    const/4 v4, 0x0

    .line 1257
    :goto_0
    return-object v4

    .line 1247
    :cond_1
    if-nez p2, :cond_2

    .line 1248
    new-instance p2, Lcom/smartisanos/smengine/math/Vector4f;

    .end local p2    # "store":Lcom/smartisanos/smengine/math/Vector4f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    .line 1251
    .restart local p2    # "store":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_2
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .local v1, "vx":F
    iget v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .local v2, "vy":F
    iget v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .local v3, "vz":F
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 1252
    .local v0, "vw":F
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1253
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1254
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1255
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p2, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move-object v4, p2

    .line 1257
    goto :goto_0
.end method

.method public mult([F)[F
    .locals 10
    .param p1, "vec4f"    # [F

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1434
    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 1435
    :cond_0
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "invalid array given, must be nonnull and length 4"

    invoke-static {v4}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 1436
    :cond_1
    const/4 p1, 0x0

    .line 1446
    .end local p1    # "vec4f":[F
    :goto_0
    return-object p1

    .line 1439
    .restart local p1    # "vec4f":[F
    :cond_2
    aget v1, p1, v6

    .local v1, "x":F
    aget v2, p1, v7

    .local v2, "y":F
    aget v3, p1, v8

    .local v3, "z":F
    aget v0, p1, v9

    .line 1441
    .local v0, "w":F
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    aput v4, p1, v6

    .line 1442
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    aput v4, p1, v7

    .line 1443
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    aput v4, p1, v8

    .line 1444
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    aput v4, p1, v9

    goto :goto_0
.end method

.method public multAcross(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 6
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1377
    if-nez p1, :cond_1

    .line 1378
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "Source vector is null, null result returned."

    invoke-static {v3}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 1379
    :cond_0
    const/4 v3, 0x0

    .line 1390
    :goto_0
    return-object v3

    .line 1381
    :cond_1
    if-nez p2, :cond_2

    .line 1382
    new-instance p2, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1385
    .restart local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_2
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .local v0, "vx":F
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .local v1, "vy":F
    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1386
    .local v2, "vz":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 1387
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1388
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object v3, p2

    .line 1390
    goto :goto_0
.end method

.method public multAcross(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 1270
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Matrix4f;->multAcross(Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v0

    return-object v0
.end method

.method public multAcross(Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 6
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 1284
    if-nez p1, :cond_1

    .line 1285
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "Source vector is null, null result returned."

    invoke-static {v4}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 1286
    :cond_0
    const/4 v4, 0x0

    .line 1298
    :goto_0
    return-object v4

    .line 1288
    :cond_1
    if-nez p2, :cond_2

    .line 1289
    new-instance p2, Lcom/smartisanos/smengine/math/Vector4f;

    .end local p2    # "store":Lcom/smartisanos/smengine/math/Vector4f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    .line 1292
    .restart local p2    # "store":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_2
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .local v1, "vx":F
    iget v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .local v2, "vy":F
    iget v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .local v3, "vz":F
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 1293
    .local v0, "vw":F
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1294
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1295
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1296
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p2, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move-object v4, p2

    .line 1298
    goto :goto_0
.end method

.method public multAcross([F)[F
    .locals 10
    .param p1, "vec4f"    # [F

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1458
    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 1459
    :cond_0
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "invalid array given, must be nonnull and length 4"

    invoke-static {v4}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 1460
    :cond_1
    const/4 p1, 0x0

    .line 1470
    .end local p1    # "vec4f":[F
    :goto_0
    return-object p1

    .line 1463
    .restart local p1    # "vec4f":[F
    :cond_2
    aget v1, p1, v6

    .local v1, "x":F
    aget v2, p1, v7

    .local v2, "y":F
    aget v3, p1, v8

    .local v3, "z":F
    aget v0, p1, v9

    .line 1465
    .local v0, "w":F
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    aput v4, p1, v6

    .line 1466
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    aput v4, p1, v7

    .line 1467
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    aput v4, p1, v8

    .line 1468
    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    aput v4, p1, v9

    goto :goto_0
.end method

.method public multLocal(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 1
    .param p1, "in2"    # Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 1182
    invoke-virtual {p0, p1, p0}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Matrix4f;Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v0

    return-object v0
.end method

.method public multLocal(F)V
    .locals 1
    .param p1, "scalar"    # F

    .prologue
    .line 1017
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 1018
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 1019
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 1020
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 1021
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 1022
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 1023
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 1024
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 1025
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 1026
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 1027
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 1028
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 1029
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 1030
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 1031
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 1032
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    .line 1033
    return-void
.end method

.method public multLocal(Lcom/smartisanos/smengine/math/Quaternion;)V
    .locals 3
    .param p1, "rotation"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 2394
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 2395
    .local v1, "axis":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/math/Quaternion;->toAngleAxis(Lcom/smartisanos/smengine/math/Vector3f;)F

    move-result v0

    .line 2396
    .local v0, "angle":F
    new-instance v2, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    .line 2397
    .local v2, "matrix4f":Lcom/smartisanos/smengine/math/Matrix4f;
    invoke-virtual {v2, v0, v1}, Lcom/smartisanos/smengine/math/Matrix4f;->fromAngleAxis(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 2398
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/math/Matrix4f;->multLocal(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    .line 2399
    return-void
.end method

.method public multNormal(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 5
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 1312
    if-nez p2, :cond_0

    .line 1313
    new-instance p2, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1316
    .restart local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .local v0, "vx":F
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .local v1, "vy":F
    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1317
    .local v2, "vz":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 1318
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1319
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1321
    return-object p2
.end method

.method public multNormalAcross(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 5
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 1335
    if-nez p2, :cond_0

    .line 1336
    new-instance p2, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1339
    .restart local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .local v0, "vx":F
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .local v1, "vy":F
    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1340
    .local v2, "vz":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 1341
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1342
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1344
    return-object p2
.end method

.method public multProj(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)F
    .locals 5
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 1359
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .local v0, "vx":F
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .local v1, "vy":F
    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1360
    .local v2, "vz":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 1361
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1362
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1363
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    add-float/2addr v3, v4

    return v3
.end method

.method public readFloatBuffer(Ljava/nio/FloatBuffer;)Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 1
    .param p1, "fb"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 860
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Matrix4f;->readFloatBuffer(Ljava/nio/FloatBuffer;Z)Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v0

    return-object v0
.end method

.method public readFloatBuffer(Ljava/nio/FloatBuffer;Z)Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 1
    .param p1, "fb"    # Ljava/nio/FloatBuffer;
    .param p2, "columnMajor"    # Z

    .prologue
    .line 872
    if-eqz p2, :cond_0

    .line 873
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 874
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 875
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 876
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 877
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 878
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 879
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 880
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 881
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 882
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 883
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 884
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 885
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 886
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 887
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 888
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    .line 907
    :goto_0
    return-object p0

    .line 890
    :cond_0
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 891
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 892
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 893
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 894
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 895
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 896
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 897
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 898
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 899
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 900
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 901
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 902
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 903
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 904
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 905
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    goto :goto_0
.end method

.method public rotateVect(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 5
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 2134
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .local v0, "vx":F
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .local v1, "vy":F
    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 2136
    .local v2, "vz":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 2137
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 2138
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 2139
    return-void
.end method

.method public scale(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 2
    .param p1, "scale"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 2321
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 2322
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 2323
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 2324
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 2325
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 2326
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 2327
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 2328
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 2329
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 2330
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 2331
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 2332
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 2333
    return-void
.end method

.method public set(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 1
    .param p1, "matrix"    # Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 582
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 583
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 584
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 585
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 586
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 587
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 588
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 589
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 590
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 591
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 592
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 593
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 594
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 595
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 596
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 597
    iget v0, p1, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    .line 598
    return-object p0
.end method

.method public set(FFFFFFFFFFFFFFFF)V
    .locals 1
    .param p1, "m00"    # F
    .param p2, "m01"    # F
    .param p3, "m02"    # F
    .param p4, "m03"    # F
    .param p5, "m10"    # F
    .param p6, "m11"    # F
    .param p7, "m12"    # F
    .param p8, "m13"    # F
    .param p9, "m20"    # F
    .param p10, "m21"    # F
    .param p11, "m22"    # F
    .param p12, "m23"    # F
    .param p13, "m30"    # F
    .param p14, "m31"    # F
    .param p15, "m32"    # F
    .param p16, "m33"    # F

    .prologue
    .line 557
    iput p1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 558
    iput p2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 559
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 560
    iput p4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 561
    iput p5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 562
    iput p6, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 563
    iput p7, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 564
    iput p8, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 565
    iput p9, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 566
    iput p10, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 567
    iput p11, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 568
    iput p12, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 569
    iput p13, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 570
    iput p14, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 571
    move/from16 v0, p15

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 572
    move/from16 v0, p16

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    .line 573
    return-void
.end method

.method public set(IIF)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "value"    # F

    .prologue
    .line 450
    packed-switch p1, :pswitch_data_0

    .line 513
    :goto_0
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Invalid matrix index."

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 514
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid indices into matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    .line 467
    :pswitch_1
    packed-switch p2, :pswitch_data_2

    .line 482
    :pswitch_2
    packed-switch p2, :pswitch_data_3

    .line 497
    :pswitch_3
    packed-switch p2, :pswitch_data_4

    goto :goto_0

    .line 499
    :pswitch_4
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 509
    :goto_1
    return-void

    .line 454
    :pswitch_5
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    goto :goto_1

    .line 457
    :pswitch_6
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    goto :goto_1

    .line 460
    :pswitch_7
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    goto :goto_1

    .line 463
    :pswitch_8
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    goto :goto_1

    .line 469
    :pswitch_9
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    goto :goto_1

    .line 472
    :pswitch_a
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    goto :goto_1

    .line 475
    :pswitch_b
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    goto :goto_1

    .line 478
    :pswitch_c
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    goto :goto_1

    .line 484
    :pswitch_d
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    goto :goto_1

    .line 487
    :pswitch_e
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    goto :goto_1

    .line 490
    :pswitch_f
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    goto :goto_1

    .line 493
    :pswitch_10
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    goto :goto_1

    .line 502
    :pswitch_11
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    goto :goto_1

    .line 505
    :pswitch_12
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    goto :goto_1

    .line 508
    :pswitch_13
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    goto :goto_1

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 452
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 467
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 482
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 497
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public set([F)V
    .locals 1
    .param p1, "matrix"    # [F

    .prologue
    .line 609
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Matrix4f;->set([FZ)V

    .line 610
    return-void
.end method

.method public set([FZ)V
    .locals 7
    .param p1, "matrix"    # [F
    .param p2, "rowMajor"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 622
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 623
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array must be of size 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_0
    if-eqz p2, :cond_1

    .line 628
    aget v0, p1, v2

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 629
    aget v0, p1, v3

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 630
    aget v0, p1, v4

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 631
    aget v0, p1, v5

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 632
    aget v0, p1, v6

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 633
    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 634
    const/4 v0, 0x6

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 635
    const/4 v0, 0x7

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 636
    const/16 v0, 0x8

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 637
    const/16 v0, 0x9

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 638
    const/16 v0, 0xa

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 639
    const/16 v0, 0xb

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 640
    const/16 v0, 0xc

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 641
    const/16 v0, 0xd

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 642
    const/16 v0, 0xe

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 643
    const/16 v0, 0xf

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    .line 662
    :goto_0
    return-void

    .line 645
    :cond_1
    aget v0, p1, v2

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 646
    aget v0, p1, v6

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 647
    const/16 v0, 0x8

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 648
    const/16 v0, 0xc

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 649
    aget v0, p1, v3

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 650
    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 651
    const/16 v0, 0x9

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 652
    const/16 v0, 0xd

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 653
    aget v0, p1, v4

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 654
    const/4 v0, 0x6

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 655
    const/16 v0, 0xa

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 656
    const/16 v0, 0xe

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 657
    aget v0, p1, v5

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 658
    const/4 v0, 0x7

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 659
    const/16 v0, 0xb

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 660
    const/16 v0, 0xf

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    goto :goto_0
.end method

.method public set([[F)V
    .locals 6
    .param p1, "matrix"    # [[F

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 525
    array-length v0, p1

    if-ne v0, v5, :cond_0

    aget-object v0, p1, v1

    array-length v0, v0

    if-eq v0, v5, :cond_1

    .line 526
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array must be of size 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_1
    aget-object v0, p1, v1

    aget v0, v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 531
    aget-object v0, p1, v1

    aget v0, v0, v2

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 532
    aget-object v0, p1, v1

    aget v0, v0, v3

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 533
    aget-object v0, p1, v1

    aget v0, v0, v4

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 534
    aget-object v0, p1, v2

    aget v0, v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 535
    aget-object v0, p1, v2

    aget v0, v0, v2

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 536
    aget-object v0, p1, v2

    aget v0, v0, v3

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 537
    aget-object v0, p1, v2

    aget v0, v0, v4

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 538
    aget-object v0, p1, v3

    aget v0, v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 539
    aget-object v0, p1, v3

    aget v0, v0, v2

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 540
    aget-object v0, p1, v3

    aget v0, v0, v3

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 541
    aget-object v0, p1, v3

    aget v0, v0, v4

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 542
    aget-object v0, p1, v4

    aget v0, v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 543
    aget-object v0, p1, v4

    aget v0, v0, v2

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 544
    aget-object v0, p1, v4

    aget v0, v0, v3

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 545
    aget-object v0, p1, v4

    aget v0, v0, v4

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    .line 546
    return-void
.end method

.method public setColumn(I[F)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "column"    # [F

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 401
    if-nez p2, :cond_1

    .line 402
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Column is null. Ignoring."

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 431
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "Invalid column index."

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 432
    :cond_2
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

    .line 407
    :pswitch_0
    aget v0, p2, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 408
    aget v0, p2, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 409
    aget v0, p2, v2

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 410
    aget v0, p2, v3

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    goto :goto_0

    .line 413
    :pswitch_1
    aget v0, p2, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 414
    aget v0, p2, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 415
    aget v0, p2, v2

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 416
    aget v0, p2, v3

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    goto :goto_0

    .line 419
    :pswitch_2
    aget v0, p2, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 420
    aget v0, p2, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 421
    aget v0, p2, v2

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 422
    aget v0, p2, v3

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    goto :goto_0

    .line 425
    :pswitch_3
    aget v0, p2, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 426
    aget v0, p2, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 427
    aget v0, p2, v2

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 428
    aget v0, p2, v3

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setInverseRotationDegrees([F)V
    .locals 7
    .param p1, "angles"    # [F

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x42652ee0

    .line 2059
    array-length v1, p1

    if-eq v1, v6, :cond_0

    .line 2060
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Angles must be of size 3."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2063
    :cond_0
    new-array v0, v6, [F

    .line 2064
    .local v0, "vec":[F
    aget v1, p1, v3

    mul-float/2addr v1, v2

    aput v1, v0, v3

    .line 2065
    aget v1, p1, v4

    mul-float/2addr v1, v2

    aput v1, v0, v4

    .line 2066
    aget v1, p1, v5

    mul-float/2addr v1, v2

    aput v1, v0, v5

    .line 2067
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/math/Matrix4f;->setInverseRotationRadians([F)V

    .line 2068
    return-void
.end method

.method public setInverseRotationRadians([F)V
    .locals 22
    .param p1, "angles"    # [F

    .prologue
    .line 2024
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 2025
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Angles must be of size 3."

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 2028
    :cond_0
    const/16 v18, 0x0

    aget v18, p1, v18

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/smengine/math/FastMath;->cos(F)F

    move-result v18

    move/from16 v0, v18

    float-to-double v4, v0

    .line 2029
    .local v4, "cr":D
    const/16 v18, 0x0

    aget v18, p1, v18

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v18

    move/from16 v0, v18

    float-to-double v12, v0

    .line 2030
    .local v12, "sr":D
    const/16 v18, 0x1

    aget v18, p1, v18

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/smengine/math/FastMath;->cos(F)F

    move-result v18

    move/from16 v0, v18

    float-to-double v2, v0

    .line 2031
    .local v2, "cp":D
    const/16 v18, 0x1

    aget v18, p1, v18

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v18

    move/from16 v0, v18

    float-to-double v10, v0

    .line 2032
    .local v10, "sp":D
    const/16 v18, 0x2

    aget v18, p1, v18

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/smengine/math/FastMath;->cos(F)F

    move-result v18

    move/from16 v0, v18

    float-to-double v8, v0

    .line 2033
    .local v8, "cy":D
    const/16 v18, 0x2

    aget v18, p1, v18

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 2035
    .local v16, "sy":D
    mul-double v18, v2, v8

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 2036
    mul-double v18, v2, v16

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 2037
    neg-double v0, v10

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 2039
    mul-double v14, v12, v10

    .line 2040
    .local v14, "srsp":D
    mul-double v6, v4, v10

    .line 2042
    .local v6, "crsp":D
    mul-double v18, v14, v8

    mul-double v20, v4, v16

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 2043
    mul-double v18, v14, v16

    mul-double v20, v4, v8

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 2044
    mul-double v18, v12, v2

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 2046
    mul-double v18, v6, v8

    mul-double v20, v12, v16

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 2047
    mul-double v18, v6, v16

    mul-double v20, v12, v8

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 2048
    mul-double v18, v4, v2

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 2049
    return-void
.end method

.method public setInverseTranslation([F)V
    .locals 2
    .param p1, "translation"    # [F

    .prologue
    .line 1956
    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1957
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Translation size must be 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1960
    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    neg-float v0, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 1961
    const/4 v0, 0x1

    aget v0, p1, v0

    neg-float v0, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 1962
    const/4 v0, 0x2

    aget v0, p1, v0

    neg-float v0, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 1963
    return-void
.end method

.method public setRotationQuaternion(Lcom/smartisanos/smengine/math/Quaternion;)V
    .locals 0
    .param p1, "quat"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 2013
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/math/Quaternion;->toRotationMatrix(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    .line 2014
    return-void
.end method

.method public setScale(FFF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 1873
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v0

    .line 1874
    .local v0, "vars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1875
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1876
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 1877
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 1878
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 1880
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1881
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1882
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 1883
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 1884
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 1886
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1887
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1888
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 1889
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 1890
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 1891
    invoke-virtual {v0}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 1892
    return-void
.end method

.method public setScale(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 3
    .param p1, "scale"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 1901
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/smartisanos/smengine/math/Matrix4f;->setScale(FFF)V

    .line 1902
    return-void
.end method

.method public setTransform(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Matrix3f;)V
    .locals 3
    .param p1, "position"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "scale"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "rotMat"    # Lcom/smartisanos/smengine/math/Matrix3f;

    .prologue
    const/4 v2, 0x0

    .line 1658
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 1659
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 1660
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 1661
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 1662
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 1663
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 1664
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 1665
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 1666
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 1667
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 1668
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 1669
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 1672
    iput v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 1673
    iput v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 1674
    iput v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 1675
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    .line 1676
    return-void
.end method

.method public setTransform(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Matrix3f;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 6
    .param p1, "position"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "scale"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "rotMat"    # Lcom/smartisanos/smengine/math/Matrix3f;
    .param p4, "skew"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1630
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    mul-float/2addr v0, v1

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    iget v2, p4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 1631
    iget v0, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    mul-float/2addr v1, v2

    iget v2, p4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 1632
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 1633
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 1635
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    mul-float/2addr v0, v1

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    iget v2, p4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 1636
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    mul-float/2addr v0, v1

    iget v1, p4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, p4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    mul-float/2addr v0, v1

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v1, v2

    iget v2, p4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 1637
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 1638
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 1640
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v0, v1

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    iget v2, p4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 1641
    iget v0, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    iget v2, p4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 1642
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 1643
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 1646
    iput v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 1647
    iput v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 1648
    iput v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 1649
    iput v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    .line 1650
    return-void
.end method

.method public setTransformSkewAfterScale(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Matrix3f;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 6
    .param p1, "position"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "scale"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "rotMat"    # Lcom/smartisanos/smengine/math/Matrix3f;
    .param p4, "skew"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1607
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    mul-float/2addr v0, v1

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v1, v2

    iget v2, p4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 1608
    iget v0, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v0, v1

    iget v1, p4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    mul-float/2addr v1, v2

    iget v2, p4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 1609
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 1610
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 1612
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    mul-float/2addr v0, v1

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v1, v2

    iget v2, p4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 1613
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    mul-float/2addr v0, v1

    iget v1, p4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, p4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    mul-float/2addr v0, v1

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    iget v2, p4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 1614
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 1615
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 1617
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    mul-float/2addr v0, v1

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v1, v2

    iget v2, p4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 1618
    iget v0, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v0, v1

    iget v1, p4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    iget v2, p4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 1619
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p3, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 1620
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 1623
    iput v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 1624
    iput v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 1625
    iput v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 1626
    iput v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    .line 1627
    return-void
.end method

.method public setTranslation(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 1931
    iput p1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 1932
    iput p2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 1933
    iput p3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 1934
    return-void
.end method

.method public setTranslation(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 1
    .param p1, "translation"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 1943
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 1944
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 1945
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 1946
    return-void
.end method

.method public setTranslation([F)V
    .locals 2
    .param p1, "translation"    # [F

    .prologue
    .line 1911
    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1912
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Translation size must be 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1915
    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 1916
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 1917
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 1918
    return-void
.end method

.method public toRotationMatrix()Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 10

    .prologue
    .line 1823
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix3f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    iget v6, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    iget v7, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    iget v8, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    iget v9, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    invoke-direct/range {v0 .. v9}, Lcom/smartisanos/smengine/math/Matrix3f;-><init>(FFFFFFFFF)V

    return-object v0
.end method

.method public toRotationMatrix(Lcom/smartisanos/smengine/math/Matrix3f;)V
    .locals 1
    .param p1, "mat"    # Lcom/smartisanos/smengine/math/Matrix3f;

    .prologue
    .line 1827
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    iput v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 1828
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    iput v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 1829
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    iput v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 1830
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    iput v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 1831
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    iput v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    .line 1832
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    iput v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 1833
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    iput v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 1834
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    iput v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    .line 1835
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    iput v0, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    .line 1836
    return-void
.end method

.method public toRotationQuat()Lcom/smartisanos/smengine/math/Quaternion;
    .locals 2

    .prologue
    .line 1813
    new-instance v0, Lcom/smartisanos/smengine/math/Quaternion;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Quaternion;-><init>()V

    .line 1814
    .local v0, "quat":Lcom/smartisanos/smengine/math/Quaternion;
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Matrix4f;->toRotationMatrix()Lcom/smartisanos/smengine/math/Matrix3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Quaternion;->fromRotationMatrix(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 1815
    return-object v0
.end method

.method public toRotationQuat(Lcom/smartisanos/smengine/math/Quaternion;)V
    .locals 1
    .param p1, "q"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 1819
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Matrix4f;->toRotationMatrix()Lcom/smartisanos/smengine/math/Matrix3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/math/Quaternion;->fromRotationMatrix(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 1820
    return-void
.end method

.method public toScaleVector()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 1844
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1845
    .local v0, "result":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/math/Matrix4f;->toScaleVector(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1846
    return-object v0
.end method

.method public toScaleVector(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 6
    .param p1, "vector"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 1856
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 1857
    .local v0, "scaleX":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 1858
    .local v1, "scaleY":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 1859
    .local v2, "scaleZ":F
    invoke-virtual {p1, v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1860
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Matrix4f\n(\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2155
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2156
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2157
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2158
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2159
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2160
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2161
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2162
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2163
    const-string v1, " \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2164
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2165
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2166
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2167
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2168
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2169
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2170
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2171
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2172
    const-string v1, " \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2173
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2174
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2175
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2176
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2177
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2178
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2179
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2180
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2181
    const-string v1, " \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2182
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2183
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2184
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2185
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2186
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2187
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2188
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2189
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2190
    const-string v1, " \n)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toTranslationVector()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 4

    .prologue
    .line 1805
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public toTranslationVector(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 3
    .param p1, "vector"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 1809
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1810
    return-void
.end method

.method public translateVect(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 2
    .param p1, "data"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 2112
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 2113
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 2114
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 2115
    return-void
.end method

.method public transpose()Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 3

    .prologue
    .line 665
    const/16 v2, 0x10

    new-array v1, v2, [F

    .line 666
    .local v1, "tmp":[F
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/smengine/math/Matrix4f;->get([FZ)V

    .line 667
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>([F)V

    .line 668
    .local v0, "mat":Lcom/smartisanos/smengine/math/Matrix4f;
    return-object v0
.end method

.method public transposeLocal()Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 2

    .prologue
    .line 677
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 678
    .local v0, "tmp":F
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    iput v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 679
    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 681
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 682
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    iput v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 683
    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 685
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 686
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    iput v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    .line 687
    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 689
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 690
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    iput v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 691
    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 693
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 694
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    iput v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    .line 695
    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    .line 697
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 698
    iget v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    iput v1, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    .line 699
    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    .line 701
    return-object p0
.end method

.method public zero()Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1751
    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m03:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 1752
    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m13:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 1753
    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m23:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 1754
    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m33:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m32:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m31:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m30:F

    .line 1755
    return-object p0
.end method
