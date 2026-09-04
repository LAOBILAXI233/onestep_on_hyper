.class public final Lcom/smartisanos/smengine/math/Vector4f;
.super Ljava/lang/Object;
.source "Vector4f.java"

.implements Ljava/lang/Cloneable;


.field public static final NAN:Lcom/smartisanos/smengine/math/Vector4f;

.field public static final NEGATIVE_INFINITY:Lcom/smartisanos/smengine/math/Vector4f;

.field public static final POSITIVE_INFINITY:Lcom/smartisanos/smengine/math/Vector4f;

.field public static final UNIT_W:Lcom/smartisanos/smengine/math/Vector4f;

.field public static final UNIT_X:Lcom/smartisanos/smengine/math/Vector4f;

.field public static final UNIT_XYZW:Lcom/smartisanos/smengine/math/Vector4f;

.field public static final UNIT_Y:Lcom/smartisanos/smengine/math/Vector4f;

.field public static final UNIT_Z:Lcom/smartisanos/smengine/math/Vector4f;

.field public static final ZERO:Lcom/smartisanos/smengine/math/Vector4f;

.field private static final log:Lcom/smartisanos/launcher/LOG;


.field public w:F

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

    .line 46
    const-class v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/math/Vector4f;->log:Lcom/smartisanos/launcher/LOG;

    .line 48
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Vector4f;->ZERO:Lcom/smartisanos/smengine/math/Vector4f;

    .line 49
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0, v5, v5, v5, v5}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Vector4f;->NAN:Lcom/smartisanos/smengine/math/Vector4f;

    .line 50
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Vector4f;->UNIT_X:Lcom/smartisanos/smengine/math/Vector4f;

    .line 51
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0, v1, v2, v1, v1}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Vector4f;->UNIT_Y:Lcom/smartisanos/smengine/math/Vector4f;

    .line 52
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Vector4f;->UNIT_Z:Lcom/smartisanos/smengine/math/Vector4f;

    .line 53
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Vector4f;->UNIT_W:Lcom/smartisanos/smengine/math/Vector4f;

    .line 54
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Vector4f;->UNIT_XYZW:Lcom/smartisanos/smengine/math/Vector4f;

    .line 55
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0, v4, v4, v4, v4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Vector4f;->POSITIVE_INFINITY:Lcom/smartisanos/smengine/math/Vector4f;

    .line 60
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Vector4f;->NEGATIVE_INFINITY:Lcom/smartisanos/smengine/math/Vector4f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 93
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 110
    iput p2, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 111
    iput p3, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 112
    iput p4, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 0
    .param p1, "copy"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Vector4f;->set(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;

    .line 122
    return-void
.end method

.method public static isValidVector(Lcom/smartisanos/smengine/math/Vector4f;)Z
    .locals 2
    .param p0, "vector"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    const/4 v0, 0x0

    .line 813
    if-nez p0, :cond_1

    .line 822
    :cond_0
    :goto_0
    return v0

    .line 814
    :cond_1
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 815
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 816
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 817
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 818
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 819
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 820
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 821
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 822
    const/4 v0, 0x1

    goto :goto_0
.end method


.method public add(FFFF)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 5
    .param p1, "addX"    # F
    .param p2, "addY"    # F
    .param p3, "addZ"    # F
    .param p4, "addW"    # F

    .prologue
    .line 234
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    add-float/2addr v1, p1

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    add-float/2addr v2, p2

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    add-float/2addr v3, p3

    iget v4, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    add-float/2addr v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    return-object v0
.end method

.method public add(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 6
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 173
    if-nez p1, :cond_1

    .line 174
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/math/Vector4f;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 175
    :cond_0
    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    goto :goto_0
.end method

.method public add(Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 2
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p2, "result"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 192
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 193
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 194
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 195
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 196
    return-object p2
.end method

.method public addLocal(FFFF)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1
    .param p1, "addX"    # F
    .param p2, "addY"    # F
    .param p3, "addZ"    # F
    .param p4, "addW"    # F

    .prologue
    .line 251
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 252
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 253
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 254
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    add-float/2addr v0, p4

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 255
    return-object p0
.end method

.method public addLocal(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 2
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 209
    if-nez p1, :cond_1

    .line 210
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/math/Vector4f;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 211
    :cond_0
    const/4 p0, 0x0

    .line 217
    .end local p0    # "this":Lcom/smartisanos/smengine/math/Vector4f;
    :goto_0
    return-object p0

    .line 213
    .restart local p0    # "this":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 214
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 215
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 216
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    goto :goto_0
.end method

.method public angleBetween(Lcom/smartisanos/smengine/math/Vector4f;)F
    .locals 2
    .param p1, "otherVector"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 770
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Vector4f;->dot(Lcom/smartisanos/smengine/math/Vector4f;)F

    move-result v1

    .line 771
    .local v1, "dotProduct":F
    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->acos(F)F

    move-result v0

    .line 772
    .local v0, "angle":F
    return v0
.end method

.method public clone()Lcom/smartisanos/smengine/math/Vector4f;
    .locals 2

    .prologue
    .line 828
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/math/Vector4f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 829
    :catch_0
    move-exception v0

    .line 830
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
    .line 44
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Vector4f;->clone()Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v0

    return-object v0
.end method

.method public distance(Lcom/smartisanos/smengine/math/Vector4f;)F
    .locals 1
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Vector4f;->distanceSquared(Lcom/smartisanos/smengine/math/Vector4f;)F

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public distanceSquared(Lcom/smartisanos/smengine/math/Vector4f;)F
    .locals 12
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 358
    iget v8, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v9, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sub-float/2addr v8, v9

    float-to-double v2, v8

    .line 359
    .local v2, "dx":D
    iget v8, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v9, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sub-float/2addr v8, v9

    float-to-double v4, v8

    .line 360
    .local v4, "dy":D
    iget v8, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v9, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sub-float/2addr v8, v9

    float-to-double v6, v8

    .line 361
    .local v6, "dz":D
    iget v8, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v9, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    sub-float/2addr v8, v9

    float-to-double v0, v8

    .line 362
    .local v0, "dw":D
    mul-double v8, v2, v2

    mul-double v10, v4, v4

    add-double/2addr v8, v10

    mul-double v10, v6, v6

    add-double/2addr v8, v10

    mul-double v10, v0, v0

    add-double/2addr v8, v10

    double-to-float v8, v8

    return v8
.end method

.method public divide(F)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 5
    .param p1, "scalar"    # F

    .prologue
    .line 511
    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    .line 512
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    return-object v0
.end method

.method public divide(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 6
    .param p1, "scalar"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 542
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    return-object v0
.end method

.method public divideLocal(F)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1
    .param p1, "scalar"    # F

    .prologue
    .line 525
    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    .line 526
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 527
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 528
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 529
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 530
    return-object p0
.end method

.method public divideLocal(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 2
    .param p1, "scalar"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 555
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 556
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 557
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 558
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 559
    return-object p0
.end method

.method public dot(Lcom/smartisanos/smengine/math/Vector4f;)F
    .locals 3
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 306
    if-nez p1, :cond_1

    .line 307
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/math/Vector4f;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "Provided vector is null, 0 returned."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 308
    :cond_0
    const/4 v0, 0x0

    .line 310
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

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

    .line 862
    instance-of v3, p1, Lcom/smartisanos/smengine/math/Vector4f;

    if-nez v3, :cond_1

    .line 871
    :cond_0
    :goto_0
    return v1

    .line 864
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 866
    check-cast v0, Lcom/smartisanos/smengine/math/Vector4f;

    .line 867
    .local v0, "comp":Lcom/smartisanos/smengine/math/Vector4f;
    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 868
    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 869
    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 870
    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 871
    goto :goto_0
.end method

.method public get(I)F
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 946
    packed-switch p1, :pswitch_data_0

    .line 956
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must be either 0, 1, 2 or 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 948
    :pswitch_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 954
    :goto_0
    return v0

    .line 950
    :pswitch_1
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    goto :goto_0

    .line 952
    :pswitch_2
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    goto :goto_0

    .line 954
    :pswitch_3
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    goto :goto_0

    .line 946
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getW()F
    .locals 1

    .prologue
    .line 930
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 903
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 912
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 921
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 881
    const/16 v0, 0x25

    .line 882
    .local v0, "hash":I
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v1, v1, 0x559

    add-int/2addr v0, v1

    .line 883
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 884
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 885
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 886
    return v0
.end method

.method public interpolateLocal(Lcom/smartisanos/smengine/math/Vector4f;F)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 3
    .param p1, "finalVec"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p2, "changeAmnt"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 783
    sub-float v0, v2, p2

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 784
    sub-float v0, v2, p2

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 785
    sub-float v0, v2, p2

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 786
    sub-float v0, v2, p2

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 787
    return-object p0
.end method

.method public interpolateLocal(Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;F)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 3
    .param p1, "beginVec"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p2, "finalVec"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p3, "changeAmnt"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 799
    sub-float v0, v2, p3

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 800
    sub-float v0, v2, p3

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 801
    sub-float v0, v2, p3

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 802
    sub-float v0, v2, p3

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 803
    return-object p0
.end method

.method public isUnitVector()Z
    .locals 2

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Vector4f;->length()F

    move-result v0

    .line 328
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
    .line 337
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Vector4f;->lengthSquared()F

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public lengthSquared()F
    .locals 3

    .prologue
    .line 347
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public maxLocal(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 2
    .param p1, "other"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 733
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    :goto_0
    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 734
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    :goto_1
    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 735
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    :goto_2
    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 736
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    :goto_3
    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 737
    return-object p0

    .line 733
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    goto :goto_0

    .line 734
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    goto :goto_1

    .line 735
    :cond_2
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    goto :goto_2

    .line 736
    :cond_3
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    goto :goto_3
.end method

.method public minLocal(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 2
    .param p1, "other"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 747
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    :goto_0
    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 748
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    :goto_1
    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 749
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    :goto_2
    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 750
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    :goto_3
    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 751
    return-object p0

    .line 747
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    goto :goto_0

    .line 748
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    goto :goto_1

    .line 749
    :cond_2
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    goto :goto_2

    .line 750
    :cond_3
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    goto :goto_3
.end method

.method public mult(F)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 5
    .param p1, "scalar"    # F

    .prologue
    .line 386
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    return-object v0
.end method

.method public mult(FLcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1
    .param p1, "scalar"    # F
    .param p2, "product"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 399
    if-nez p2, :cond_0

    .line 400
    new-instance p2, Lcom/smartisanos/smengine/math/Vector4f;

    .end local p2    # "product":Lcom/smartisanos/smengine/math/Vector4f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    .line 403
    .restart local p2    # "product":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 404
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 405
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 406
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 407
    return-object p2
.end method

.method public mult(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 3
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    const/4 v0, 0x0

    .line 476
    if-nez p1, :cond_1

    .line 477
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/smengine/math/Vector4f;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "Provided vector is null, null returned."

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 480
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Vector4f;->mult(Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v0

    goto :goto_0
.end method

.method public mult(Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 5
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 494
    if-nez p1, :cond_1

    .line 495
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/math/Vector4f;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 496
    :cond_0
    const/4 v0, 0x0

    .line 499
    :goto_0
    return-object v0

    .line 498
    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Lcom/smartisanos/smengine/math/Vector4f;

    .end local p2    # "store":Lcom/smartisanos/smengine/math/Vector4f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    .line 499
    .restart local p2    # "store":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_2
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v3, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v0

    goto :goto_0
.end method

.method public multLocal(F)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1
    .param p1, "scalar"    # F

    .prologue
    .line 419
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 420
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 421
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 422
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 423
    return-object p0
.end method

.method public multLocal(FFFF)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    .line 459
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 460
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 461
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 462
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v0, p4

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 463
    return-object p0
.end method

.method public multLocal(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 2
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 436
    if-nez p1, :cond_1

    .line 437
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/math/Vector4f;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 438
    :cond_0
    const/4 p0, 0x0

    .line 444
    .end local p0    # "this":Lcom/smartisanos/smengine/math/Vector4f;
    :goto_0
    return-object p0

    .line 440
    .restart local p0    # "this":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 441
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 442
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 443
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    goto :goto_0
.end method

.method public negate()Lcom/smartisanos/smengine/math/Vector4f;
    .locals 5

    .prologue
    .line 570
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    neg-float v1, v1

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    neg-float v2, v2

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    neg-float v3, v3

    iget v4, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    neg-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    return-object v0
.end method

.method public negateLocal()Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    neg-float v0, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 581
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    neg-float v0, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 582
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    neg-float v0, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 583
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    neg-float v0, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 584
    return-object p0
.end method

.method public normalize()Lcom/smartisanos/smengine/math/Vector4f;
    .locals 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 697
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 698
    .local v0, "length":F
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 699
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v1

    div-float v0, v4, v1

    .line 700
    new-instance v1, Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 702
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Vector4f;->clone()Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v1

    goto :goto_0
.end method

.method public normalizeLocal()Lcom/smartisanos/smengine/math/Vector4f;
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 715
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 716
    .local v0, "length":F
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 717
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v1

    div-float v0, v4, v1

    .line 718
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 719
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 720
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 721
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 723
    :cond_0
    return-object p0
.end method

.method public project(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 4
    .param p1, "other"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Vector4f;->dot(Lcom/smartisanos/smengine/math/Vector4f;)F

    move-result v1

    .line 315
    .local v1, "n":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/math/Vector4f;->lengthSquared()F

    move-result v0

    .line 316
    .local v0, "d":F
    new-instance v2, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v2, p1}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(Lcom/smartisanos/smengine/math/Vector4f;)V

    invoke-virtual {v2}, Lcom/smartisanos/smengine/math/Vector4f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v2

    div-float v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/math/Vector4f;->multLocal(F)Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v2

    return-object v2
.end method

.method public scaleAdd(FLcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 2
    .param p1, "scalar"    # F
    .param p2, "add"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 269
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v0, p1

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 270
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v0, p1

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 271
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v0, p1

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 272
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v0, p1

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 273
    return-object p0
.end method

.method public scaleAdd(FLcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 2
    .param p1, "scalar"    # F
    .param p2, "mult"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p3, "add"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 289
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v0, p1

    iget v1, p3, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 290
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v0, p1

    iget v1, p3, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 291
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v0, p1

    iget v1, p3, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 292
    iget v0, p2, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v0, p1

    iget v1, p3, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 293
    return-object p0
.end method

.method public set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    .line 139
    iput p1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 140
    iput p2, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 141
    iput p3, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 142
    iput p4, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 143
    return-object p0
.end method

.method public set(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1
    .param p1, "vect"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 155
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 156
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 157
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 158
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 159
    return-object p0
.end method

.method public set(IF)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 968
    packed-switch p1, :pswitch_data_0

    .line 982
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must be either 0, 1, 2 or 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 970
    :pswitch_0
    iput p2, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 980
    :goto_0
    return-void

    .line 973
    :pswitch_1
    iput p2, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    goto :goto_0

    .line 976
    :pswitch_2
    iput p2, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    goto :goto_0

    .line 979
    :pswitch_3
    iput p2, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    goto :goto_0

    .line 968
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setW(F)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 0
    .param p1, "w"    # F

    .prologue
    .line 934
    iput p1, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 935
    return-object p0
.end method

.method public setX(F)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 907
    iput p1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 908
    return-object p0
.end method

.method public setY(F)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 916
    iput p1, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 917
    return-object p0
.end method

.method public setZ(F)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 0
    .param p1, "z"    # F

    .prologue
    .line 925
    iput p1, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 926
    return-object p0
.end method

.method public subtract(FFFF)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 5
    .param p1, "subtractX"    # F
    .param p2, "subtractY"    # F
    .param p3, "subtractZ"    # F
    .param p4, "subtractW"    # F

    .prologue
    .line 659
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sub-float/2addr v2, p2

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sub-float/2addr v3, p3

    iget v4, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    sub-float/2addr v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    return-object v0
.end method

.method public subtract(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 6
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 598
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    return-object v0
.end method

.method public subtract(Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 2
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p2, "result"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 633
    if-nez p2, :cond_0

    .line 634
    new-instance p2, Lcom/smartisanos/smengine/math/Vector4f;

    .end local p2    # "result":Lcom/smartisanos/smengine/math/Vector4f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    .line 636
    .restart local p2    # "result":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 637
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 638
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 639
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 640
    return-object p2
.end method

.method public subtractLocal(FFFF)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1
    .param p1, "subtractX"    # F
    .param p2, "subtractY"    # F
    .param p3, "subtractZ"    # F
    .param p4, "subtractW"    # F

    .prologue
    .line 678
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 679
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 680
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sub-float/2addr v0, p3

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 681
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    sub-float/2addr v0, p4

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 682
    return-object p0
.end method

.method public subtractLocal(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 2
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 611
    if-nez p1, :cond_1

    .line 612
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/math/Vector4f;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 613
    :cond_0
    const/4 p0, 0x0

    .line 619
    .end local p0    # "this":Lcom/smartisanos/smengine/math/Vector4f;
    :goto_0
    return-object p0

    .line 615
    .restart local p0    # "this":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 616
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 617
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 618
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    goto :goto_0
.end method

.method public toArray([F)[F
    .locals 2
    .param p1, "floats"    # [F

    .prologue
    .line 843
    if-nez p1, :cond_0

    .line 844
    const/4 v0, 0x4

    new-array p1, v0, [F

    .line 846
    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    aput v1, p1, v0

    .line 847
    const/4 v0, 0x1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    aput v1, p1, v0

    .line 848
    const/4 v0, 0x2

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    aput v1, p1, v0

    .line 849
    const/4 v0, 0x3

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    aput v1, p1, v0

    .line 850
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zero()Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1

    .prologue
    .line 758
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 759
    return-object p0
.end method
