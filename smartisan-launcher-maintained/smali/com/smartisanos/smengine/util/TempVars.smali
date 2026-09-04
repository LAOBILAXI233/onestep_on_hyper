.class public Lcom/smartisanos/smengine/util/TempVars;
.super Ljava/lang/Object;
.source "TempVars.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;
    }
.end annotation


.field private static final STACK_SIZE:I = 0x5

.field private static final varsLocal:Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;


.field public final bihSwapTmp:[F

.field public final br1:Lcom/smartisanos/smengine/BoundingRect;

.field public final fADdU:[F

.field public final fAWdU:[F

.field public final fAWxDdU:[F

.field public final fDdU:[F

.field public final fWdU:[F

.field private isUsed:Z

.field public final matrixWrite:[F

.field public final quat1:Lcom/smartisanos/smengine/math/Quaternion;

.field public final quat2:Lcom/smartisanos/smengine/math/Quaternion;

.field public final tempMat3:Lcom/smartisanos/smengine/math/Matrix3f;

.field public final tempMat4:Lcom/smartisanos/smengine/math/Matrix4f;

.field public final tempMat42:Lcom/smartisanos/smengine/math/Matrix4f;

.field public final tri:[Lcom/smartisanos/smengine/math/Vector3f;

.field public final vect1:Lcom/smartisanos/smengine/math/Vector3f;

.field public final vect10:Lcom/smartisanos/smengine/math/Vector3f;

.field public final vect2:Lcom/smartisanos/smengine/math/Vector3f;

.field public final vect2d:Lcom/smartisanos/smengine/math/Vector2f;

.field public final vect2d2:Lcom/smartisanos/smengine/math/Vector2f;

.field public final vect3:Lcom/smartisanos/smengine/math/Vector3f;

.field public final vect4:Lcom/smartisanos/smengine/math/Vector3f;

.field public final vect41f:Lcom/smartisanos/smengine/math/Vector4f;

.field public final vect42f:Lcom/smartisanos/smengine/math/Vector4f;

.field public final vect5:Lcom/smartisanos/smengine/math/Vector3f;

.field public final vect6:Lcom/smartisanos/smengine/math/Vector3f;

.field public final vect7:Lcom/smartisanos/smengine/math/Vector3f;

.field public final vect8:Lcom/smartisanos/smengine/math/Vector3f;

.field public final vect9:Lcom/smartisanos/smengine/math/Vector3f;

.field public final xyzw:[F


.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;-><init>(Lcom/smartisanos/smengine/util/TempVars$1;)V

    sput-object v0, Lcom/smartisanos/smengine/util/TempVars;->varsLocal:Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v2, p0, Lcom/smartisanos/smengine/util/TempVars;->isUsed:Z

    .line 148
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 149
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->vect2:Lcom/smartisanos/smengine/math/Vector3f;

    .line 150
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->vect3:Lcom/smartisanos/smengine/math/Vector3f;

    .line 151
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->vect4:Lcom/smartisanos/smengine/math/Vector3f;

    .line 152
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->vect5:Lcom/smartisanos/smengine/math/Vector3f;

    .line 153
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->vect6:Lcom/smartisanos/smengine/math/Vector3f;

    .line 154
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->vect7:Lcom/smartisanos/smengine/math/Vector3f;

    .line 156
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->vect8:Lcom/smartisanos/smengine/math/Vector3f;

    .line 157
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->vect9:Lcom/smartisanos/smengine/math/Vector3f;

    .line 158
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->vect10:Lcom/smartisanos/smengine/math/Vector3f;

    .line 159
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->vect41f:Lcom/smartisanos/smengine/math/Vector4f;

    .line 160
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->vect42f:Lcom/smartisanos/smengine/math/Vector4f;

    .line 161
    new-array v0, v3, [Lcom/smartisanos/smengine/math/Vector3f;

    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->tri:[Lcom/smartisanos/smengine/math/Vector3f;

    .line 167
    new-instance v0, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->vect2d:Lcom/smartisanos/smengine/math/Vector2f;

    .line 168
    new-instance v0, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->vect2d2:Lcom/smartisanos/smengine/math/Vector2f;

    .line 172
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->tempMat3:Lcom/smartisanos/smengine/math/Matrix3f;

    .line 173
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->tempMat4:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 174
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->tempMat42:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 178
    new-instance v0, Lcom/smartisanos/smengine/math/Quaternion;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->quat1:Lcom/smartisanos/smengine/math/Quaternion;

    .line 179
    new-instance v0, Lcom/smartisanos/smengine/math/Quaternion;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->quat2:Lcom/smartisanos/smengine/math/Quaternion;

    .line 190
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->fWdU:[F

    .line 191
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->fAWdU:[F

    .line 192
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->fDdU:[F

    .line 193
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->fADdU:[F

    .line 194
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->fAWxDdU:[F

    .line 195
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->xyzw:[F

    .line 200
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->matrixWrite:[F

    .line 204
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->bihSwapTmp:[F

    .line 207
    new-instance v0, Lcom/smartisanos/smengine/BoundingRect;

    invoke-direct {v0}, Lcom/smartisanos/smengine/BoundingRect;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars;->br1:Lcom/smartisanos/smengine/BoundingRect;

    .line 89
    return-void
.end method

.method public static get()Lcom/smartisanos/smengine/util/TempVars;
    .locals 4

    .prologue
    .line 101
    sget-object v1, Lcom/smartisanos/smengine/util/TempVars;->varsLocal:Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;

    .line 103
    .local v1, "stack":Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;
    iget-object v2, v1, Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;->tempVars:[Lcom/smartisanos/smengine/util/TempVars;

    iget v3, v1, Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;->index:I

    aget-object v0, v2, v3

    .line 105
    .local v0, "instance":Lcom/smartisanos/smengine/util/TempVars;
    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/smartisanos/smengine/util/TempVars;

    .end local v0    # "instance":Lcom/smartisanos/smengine/util/TempVars;
    invoke-direct {v0}, Lcom/smartisanos/smengine/util/TempVars;-><init>()V

    .line 110
    .restart local v0    # "instance":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v2, v1, Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;->tempVars:[Lcom/smartisanos/smengine/util/TempVars;

    iget v3, v1, Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;->index:I

    aput-object v0, v2, v3

    .line 113
    :cond_0
    iget v2, v1, Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;->index:I

    .line 115
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/smartisanos/smengine/util/TempVars;->isUsed:Z

    .line 117
    return-object v0
.end method


.method public release()V
    .locals 3

    .prologue
    .line 128
    iget-boolean v1, p0, Lcom/smartisanos/smengine/util/TempVars;->isUsed:Z

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This instance of TempVars was already released!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/smartisanos/smengine/util/TempVars;->isUsed:Z

    .line 134
    sget-object v0, Lcom/smartisanos/smengine/util/TempVars;->varsLocal:Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;

    .line 137
    .local v0, "stack":Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;
    iget v1, v0, Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;->index:I

    .line 140
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;->tempVars:[Lcom/smartisanos/smengine/util/TempVars;

    iget v2, v0, Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;->index:I

    aget-object v1, v1, v2

    if-eq v1, p0, :cond_1

    .line 141
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "An instance of TempVars has not been released in a called method!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_1
    return-void
.end method
