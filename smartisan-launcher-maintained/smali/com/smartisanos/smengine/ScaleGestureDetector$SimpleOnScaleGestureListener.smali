.class public Lcom/smartisanos/smengine/ScaleGestureDetector$SimpleOnScaleGestureListener;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"

.implements Lcom/smartisanos/smengine/ScaleGestureDetector$OnScaleGestureListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/ScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnScaleGestureListener"
.end annotation


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onScale(Lcom/smartisanos/smengine/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Lcom/smartisanos/smengine/ScaleGestureDetector;

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleBegin(Lcom/smartisanos/smengine/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Lcom/smartisanos/smengine/ScaleGestureDetector;

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Lcom/smartisanos/smengine/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Lcom/smartisanos/smengine/ScaleGestureDetector;

    .prologue
    .line 122
    return-void
.end method
