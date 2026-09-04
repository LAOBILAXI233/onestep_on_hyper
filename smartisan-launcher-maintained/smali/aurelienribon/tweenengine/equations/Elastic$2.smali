.class final Laurelienribon/tweenengine/equations/Elastic$2;
.super Laurelienribon/tweenengine/equations/Elastic;
.source "Elastic.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laurelienribon/tweenengine/equations/Elastic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Elastic;-><init>()V

    return-void
.end method


.method public final compute(F)F
    .locals 11
    .param p1, "t"    # F

    .prologue
    const v10, 0x40c90fdb

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 34
    iget v0, p0, Laurelienribon/tweenengine/equations/Elastic$2;->param_a:F

    .line 35
    .local v0, "a":F
    iget v1, p0, Laurelienribon/tweenengine/equations/Elastic$2;->param_p:F

    .line 36
    .local v1, "p":F
    cmpl-float v5, p1, v3

    if-nez v5, :cond_0

    .line 40
    :goto_0
    return v3

    .line 36
    :cond_0
    cmpl-float v3, p1, v4

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Laurelienribon/tweenengine/equations/Elastic$2;->setP:Z

    if-nez v3, :cond_2

    const v1, 0x3e99999a    # 0.3f

    .line 38
    :cond_2
    iget-boolean v3, p0, Laurelienribon/tweenengine/equations/Elastic$2;->setA:Z

    if-eqz v3, :cond_3

    cmpg-float v3, v0, v4

    if-gez v3, :cond_4

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v3, 0x40800000    # 4.0f

    div-float v2, v1, v3

    .line 40
    .local v2, "s":F
    :goto_1
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/high16 v3, -0x3ee00000    # -10.0f

    mul-float/2addr v3, p1

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v3, v6

    mul-float/2addr v3, v0

    sub-float v5, p1, v2

    mul-float/2addr v5, v10

    div-float/2addr v5, v1

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    goto :goto_0

    .line 39
    .end local v2    # "s":F
    :cond_4
    div-float v3, v1, v10

    div-float v5, v4, v0

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float v2, v3, v5

    .restart local v2    # "s":F
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "Elastic.OUT"

    return-object v0
.end method
