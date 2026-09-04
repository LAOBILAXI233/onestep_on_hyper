.class public final Lcom/smartisanos/smengine/math/Vector3f;
.super Ljava/lang/Object;
.source "Vector3f.java"

.implements Ljava/lang/Cloneable;


.field public static final NAN:Lcom/smartisanos/smengine/math/Vector3f;

.field public static final NEGATIVE_INFINITY:Lcom/smartisanos/smengine/math/Vector3f;

.field public static final POSITIVE_INFINITY:Lcom/smartisanos/smengine/math/Vector3f;

.field public static final UNIT_X:Lcom/smartisanos/smengine/math/Vector3f;

.field public static final UNIT_XYZ:Lcom/smartisanos/smengine/math/Vector3f;

.field public static final UNIT_Y:Lcom/smartisanos/smengine/math/Vector3f;

.field public static final UNIT_Z:Lcom/smartisanos/smengine/math/Vector3f;

.field public static final ZERO:Lcom/smartisanos/smengine/math/Vector3f;

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field static final serialVersionUID:J = 0x1L


.field public x:F

.field public y:F

.field public z:F


.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 58
    const-class v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/math/Vector3f;->log:Lcom/smartisanos/launcher/LOG;

    .line 60
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Vector3f;->ZERO:Lcom/smartisanos/smengine/math/Vector3f;

    .line 61
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v5, v5, v5}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Vector3f;->NAN:Lcom/smartisanos/smengine/math/Vector3f;

    .line 62
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v2, v1, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Vector3f;->UNIT_X:Lcom/smartisanos/smengine/math/Vector3f;

    .line 63
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v1, v2, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Vector3f;->UNIT_Y:Lcom/smartisanos/smengine/math/Vector3f;

    .line 64
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v1, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Vector3f;->UNIT_Z:Lcom/smartisanos/smengine/math/Vector3f;

    .line 65
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v2, v2, v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Vector3f;->UNIT_XYZ:Lcom/smartisanos/smengine/math/Vector3f;

    .line 66
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v4, v4, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Vector3f;->POSITIVE_INFINITY:Lcom/smartisanos/smengine/math/Vector3f;

    .line 70
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v3, v3, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Vector3f;->NEGATIVE_INFINITY:Lcom/smartisanos/smengine/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 98
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 113
    iput p2, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 114
    iput p3, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 0
    .param p1, "copy"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 124
    return-void
.end method

.method public static generateComplementBasis(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 5
    .param p0, "u"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "w"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/4 v4, 0x0

    .line 919
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->abs(F)F

    move-result v1

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-static {v2}, Lcom/smartisanos/smengine/math/FastMath;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 921
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v1, v2

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->invSqrt(F)F

    move-result v0

    .line 922
    .local v0, "fInvLength":F
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    neg-float v1, v1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 923
    iput v4, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 924
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 925
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 926
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v1, v2

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 927
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    neg-float v1, v1

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 938
    :goto_0
    return-void

    .line 930
    .end local v0    # "fInvLength":F
    :cond_0
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->invSqrt(F)F

    move-result v0

    .line 931
    .restart local v0    # "fInvLength":F
    iput v4, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 932
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 933
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    neg-float v1, v1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 934
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v1, v2

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 935
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    neg-float v1, v1

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 936
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    goto :goto_0
.end method

.method public static generateOrthonormalBasis(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 0
    .param p0, "u"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "w"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 911
    invoke-virtual {p2}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    .line 912
    invoke-static {p0, p1, p2}, Lcom/smartisanos/smengine/math/Vector3f;->generateComplementBasis(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 913
    return-void
.end method

.method public static isValidVector(Lcom/smartisanos/smengine/math/Vector3f;)Z
    .locals 2
    .param p0, "vector"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/4 v0, 0x0

    .line 900
    if-nez p0, :cond_1

    .line 907
    :cond_0
    :goto_0
    return v0

    .line 901
    :cond_1
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 902
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 903
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 904
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 905
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 906
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 907
    const/4 v0, 0x1

    goto :goto_0
.end method


.method public add(FFF)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 4
    .param p1, "addX"    # F
    .param p2, "addY"    # F
    .param p3, "addZ"    # F

    .prologue
    .line 230
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float/2addr v1, p1

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float/2addr v2, p2

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    add-float/2addr v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public add(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 5
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 171
    if-nez p1, :cond_1

    .line 172
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/math/Vector3f;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 173
    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    add-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    goto :goto_0
.end method

.method public add(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 2
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "result"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 190
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 191
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 192
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 193
    return-object p2
.end method

.method public addLocal(FFF)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "addX"    # F
    .param p2, "addY"    # F
    .param p3, "addZ"    # F

    .prologue
    .line 247
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 248
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 249
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 250
    return-object p0
.end method

.method public addLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 2
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 206
    if-nez p1, :cond_1

    .line 207
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/math/Vector3f;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 208
    :cond_0
    const/4 p0, 0x0

    .line 213
    .end local p0    # "this":Lcom/smartisanos/smengine/math/Vector3f;
    :goto_0
    return-object p0

    .line 210
    .restart local p0    # "this":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 211
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 212
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    goto :goto_0
.end method

.method public angleBetween(Lcom/smartisanos/smengine/math/Vector3f;)F
    .locals 2
    .param p1, "otherVector"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 859
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Vector3f;->dot(Lcom/smartisanos/smengine/math/Vector3f;)F

    move-result v1

    .line 860
    .local v1, "dotProduct":F
    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->acos(F)F

    move-result v0

    .line 861
    .local v0, "angle":F
    return v0
.end method

.method public clone()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 2

    .prologue
    .line 943
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 944
    :catch_0
    move-exception v0

    .line 945
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
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public cross(FFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 5
    .param p1, "otherX"    # F
    .param p2, "otherY"    # F
    .param p3, "otherZ"    # F
    .param p4, "result"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 347
    if-nez p4, :cond_0

    new-instance p4, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p4    # "result":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 348
    .restart local p4    # "result":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v3, p3

    iget v4, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v4, p2

    sub-float v0, v3, v4

    .line 349
    .local v0, "resX":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v4, p3

    sub-float v1, v3, v4

    .line 350
    .local v1, "resY":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v3, p2

    iget v4, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v4, p1

    sub-float v2, v3, v4

    .line 351
    .local v2, "resZ":F
    invoke-virtual {p4, v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 352
    return-object p4
.end method

.method public cross(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Vector3f;->cross(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public cross(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "result"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 329
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/smartisanos/smengine/math/Vector3f;->cross(FFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public crossLocal(FFF)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 4
    .param p1, "otherX"    # F
    .param p2, "otherY"    # F
    .param p3, "otherZ"    # F

    .prologue
    .line 380
    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v2, p3

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v3, p2

    sub-float v0, v2, v3

    .line 381
    .local v0, "tempx":F
    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v3, p3

    sub-float v1, v2, v3

    .line 382
    .local v1, "tempy":F
    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 383
    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 384
    iput v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 385
    return-object p0
.end method

.method public crossLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 364
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->crossLocal(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public distance(Lcom/smartisanos/smengine/math/Vector3f;)F
    .locals 1
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Vector3f;->distanceSquared(Lcom/smartisanos/smengine/math/Vector3f;)F

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public distanceSquared(Lcom/smartisanos/smengine/math/Vector3f;)F
    .locals 10
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 452
    iget v6, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v7, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float/2addr v6, v7

    float-to-double v0, v6

    .line 453
    .local v0, "dx":D
    iget v6, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v7, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float/2addr v6, v7

    float-to-double v2, v6

    .line 454
    .local v2, "dy":D
    iget v6, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v7, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    sub-float/2addr v6, v7

    float-to-double v4, v6

    .line 455
    .local v4, "dz":D
    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double/2addr v6, v8

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    double-to-float v6, v6

    return v6
.end method

.method public divide(F)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 4
    .param p1, "scalar"    # F

    .prologue
    .line 612
    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    .line 613
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public divide(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 5
    .param p1, "scalar"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 643
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    div-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public divideLocal(F)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "scalar"    # F

    .prologue
    .line 626
    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    .line 627
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 628
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 629
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 630
    return-object p0
.end method

.method public divideLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 2
    .param p1, "scalar"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 656
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 657
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 658
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 659
    return-object p0
.end method

.method public dot(Lcom/smartisanos/smengine/math/Vector3f;)F
    .locals 3
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 299
    if-nez p1, :cond_1

    .line 300
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/math/Vector3f;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "Provided vector is null, 0 returned."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 301
    :cond_0
    const/4 v0, 0x0

    .line 303
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

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

    .line 976
    instance-of v3, p1, Lcom/smartisanos/smengine/math/Vector3f;

    if-nez v3, :cond_1

    .line 984
    :cond_0
    :goto_0
    return v1

    .line 978
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 980
    check-cast v0, Lcom/smartisanos/smengine/math/Vector3f;

    .line 981
    .local v0, "comp":Lcom/smartisanos/smengine/math/Vector3f;
    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 982
    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 983
    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 984
    goto :goto_0
.end method

.method public get(I)F
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1050
    packed-switch p1, :pswitch_data_0

    .line 1058
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must be either 0, 1 or 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1052
    :pswitch_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 1056
    :goto_0
    return v0

    .line 1054
    :pswitch_1
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    goto :goto_0

    .line 1056
    :pswitch_2
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    goto :goto_0

    .line 1050
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 1016
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 1025
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 1034
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 994
    const/16 v0, 0x25

    .line 995
    .local v0, "hash":I
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v1, v1, 0x559

    add-int/2addr v0, v1

    .line 996
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 997
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 998
    return v0
.end method

.method public interpolateLocal(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p1, "finalVec"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "changeAmnt"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 872
    sub-float v0, v2, p2

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 873
    sub-float v0, v2, p2

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 874
    sub-float v0, v2, p2

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 875
    return-object p0
.end method

.method public interpolateLocal(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p1, "beginVec"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "finalVec"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "changeAmnt"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 887
    sub-float v0, v2, p3

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 888
    sub-float v0, v2, p3

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 889
    sub-float v0, v2, p3

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 890
    return-object p0
.end method

.method public isUnitVector()Z
    .locals 2

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Vector3f;->length()F

    move-result v0

    .line 422
    .local v0, "len":F
    const v1, 0x3f7d70a4    # 0.99f

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    const v1, 0x3f8147ae    # 1.01f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public length()F
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Vector3f;->lengthSquared()F

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public lengthSquared()F
    .locals 3

    .prologue
    .line 441
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public maxLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 2
    .param p1, "other"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 824
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    :goto_0
    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 825
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    :goto_1
    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 826
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    :goto_2
    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 827
    return-object p0

    .line 824
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    goto :goto_0

    .line 825
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    goto :goto_1

    .line 826
    :cond_2
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    goto :goto_2
.end method

.method public minLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 2
    .param p1, "other"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 837
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    :goto_0
    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 838
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    :goto_1
    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 839
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    :goto_2
    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 840
    return-object p0

    .line 837
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    goto :goto_0

    .line 838
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    goto :goto_1

    .line 839
    :cond_2
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    goto :goto_2
.end method

.method public mult(F)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 4
    .param p1, "scalar"    # F

    .prologue
    .line 479
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public mult(FLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "scalar"    # F
    .param p2, "product"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 492
    if-nez p2, :cond_0

    .line 493
    new-instance p2, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p2    # "product":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 496
    .restart local p2    # "product":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 497
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 498
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 499
    return-object p2
.end method

.method public mult(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/4 v0, 0x0

    .line 576
    if-nez p1, :cond_1

    .line 577
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/smengine/math/Vector3f;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "Provided vector is null, null returned."

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 580
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Vector3f;->mult(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    goto :goto_0
.end method

.method public mult(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 4
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 594
    if-nez p1, :cond_1

    .line 595
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/math/Vector3f;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 596
    :cond_0
    const/4 v0, 0x0

    .line 599
    :goto_0
    return-object v0

    .line 598
    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 599
    .restart local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_2
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v2, v3

    invoke-virtual {p2, v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    goto :goto_0
.end method

.method public multLocal(F)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "scalar"    # F

    .prologue
    .line 511
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 512
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 513
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 514
    return-object p0
.end method

.method public multLocal(FFF)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 560
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 561
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 562
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 563
    return-object p0
.end method

.method public multLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 2
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 527
    if-nez p1, :cond_1

    .line 528
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/math/Vector3f;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 529
    :cond_0
    const/4 p0, 0x0

    .line 546
    .end local p0    # "this":Lcom/smartisanos/smengine/math/Vector3f;
    :goto_0
    return-object p0

    .line 542
    .restart local p0    # "this":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 543
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 544
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    goto :goto_0
.end method

.method public negate()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 4

    .prologue
    .line 670
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    neg-float v1, v1

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    neg-float v2, v2

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    neg-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public negateLocal()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    neg-float v0, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 681
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    neg-float v0, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 682
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    neg-float v0, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 683
    return-object p0
.end method

.method public normalize()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 789
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 790
    .local v0, "length":F
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 791
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v1

    div-float v0, v4, v1

    .line 792
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v4, v0

    invoke-direct {v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 794
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    goto :goto_0
.end method

.method public normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 807
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 808
    .local v0, "length":F
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 809
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v1

    div-float v0, v4, v1

    .line 810
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 811
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 812
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 814
    :cond_0
    return-object p0
.end method

.method public project(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 4
    .param p1, "other"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Vector3f;->dot(Lcom/smartisanos/smengine/math/Vector3f;)F

    move-result v1

    .line 396
    .local v1, "n":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/math/Vector3f;->lengthSquared()F

    move-result v0

    .line 397
    .local v0, "d":F
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v2, p1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(Lcom/smartisanos/smengine/math/Vector3f;)V

    invoke-virtual {v2}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    div-float v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    return-object v2
.end method

.method public projectLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 4
    .param p1, "other"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Vector3f;->dot(Lcom/smartisanos/smengine/math/Vector3f;)F

    move-result v1

    .line 409
    .local v1, "n":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/math/Vector3f;->lengthSquared()F

    move-result v0

    .line 410
    .local v0, "d":F
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    div-float v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    return-object v2
.end method

.method public scaleAdd(FLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 2
    .param p1, "scalar"    # F
    .param p2, "add"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 264
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, p1

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 265
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v0, p1

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 266
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v0, p1

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 267
    return-object p0
.end method

.method public scaleAdd(FLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 2
    .param p1, "scalar"    # F
    .param p2, "mult"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "add"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 283
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v0, p1

    iget v1, p3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 284
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v0, p1

    iget v1, p3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 285
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v0, p1

    iget v1, p3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 286
    return-object p0
.end method

.method public set(FFF)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 139
    iput p1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 140
    iput p2, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 141
    iput p3, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 142
    return-object p0
.end method

.method public set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "vect"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 154
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 155
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 156
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 157
    return-object p0
.end method

.method public set(IF)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 1070
    packed-switch p1, :pswitch_data_0

    .line 1081
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must be either 0, 1 or 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1072
    :pswitch_0
    iput p2, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 1079
    :goto_0
    return-void

    .line 1075
    :pswitch_1
    iput p2, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    goto :goto_0

    .line 1078
    :pswitch_2
    iput p2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    goto :goto_0

    .line 1070
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setX(F)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 1020
    iput p1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 1021
    return-object p0
.end method

.method public setY(F)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 1029
    iput p1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1030
    return-object p0
.end method

.method public setZ(F)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 0
    .param p1, "z"    # F

    .prologue
    .line 1038
    iput p1, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1039
    return-object p0
.end method

.method public subtract(FFF)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 4
    .param p1, "subtractX"    # F
    .param p2, "subtractY"    # F
    .param p3, "subtractZ"    # F

    .prologue
    .line 754
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float/2addr v2, p2

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    sub-float/2addr v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public subtract(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 5
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 697
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public subtract(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 2
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "result"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 731
    if-nez p2, :cond_0

    .line 732
    new-instance p2, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p2    # "result":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 734
    .restart local p2    # "result":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 735
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 736
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 737
    return-object p2
.end method

.method public subtractLocal(FFF)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "subtractX"    # F
    .param p2, "subtractY"    # F
    .param p3, "subtractZ"    # F

    .prologue
    .line 771
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 772
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 773
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    sub-float/2addr v0, p3

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 774
    return-object p0
.end method

.method public subtractLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 2
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 710
    if-nez p1, :cond_1

    .line 711
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/math/Vector3f;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 712
    :cond_0
    const/4 p0, 0x0

    .line 717
    .end local p0    # "this":Lcom/smartisanos/smengine/math/Vector3f;
    :goto_0
    return-object p0

    .line 714
    .restart local p0    # "this":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 715
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 716
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    goto :goto_0
.end method

.method public toArray([F)[F
    .locals 2
    .param p1, "floats"    # [F

    .prologue
    .line 958
    if-nez p1, :cond_0

    .line 959
    const/4 v0, 0x3

    new-array p1, v0, [F

    .line 961
    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v1, p1, v0

    .line 962
    const/4 v0, 0x1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v1, p1, v0

    .line 963
    const/4 v0, 0x2

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    aput v1, p1, v0

    .line 964
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zero()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 847
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 848
    return-object p0
.end method
