.class public Lcom/smartisanos/smengine/math/NeonOp;
.super Ljava/lang/Object;
.source "NeonOp.java"


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "neonop"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addVector4f(FFFFFFFF[F)V
.end method

.method public static native mulVector4f(FFFFFFFF[F)V
.end method

.method public static native quatMultVectorX(FFFFFFF)F
.end method

.method public static native quatMultVectorY(FFFFFFF)F
.end method

.method public static native quatMultVectorZ(FFFFFFF)F
.end method

.method public static native vector3MulVector3AddScalor(FFFFFFF)F
.end method
