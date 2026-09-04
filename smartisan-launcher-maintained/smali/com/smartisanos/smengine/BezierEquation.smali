.class public Lcom/smartisanos/smengine/BezierEquation;
.super Laurelienribon/tweenengine/TweenEquation;
.source "BezierEquation.java"


.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private mBezierSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector2f;",
            ">;>;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/smartisanos/smengine/BezierEquation;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/BezierEquation;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Laurelienribon/tweenengine/TweenEquation;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector2f;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector2f;>;>;"
    invoke-direct {p0}, Laurelienribon/tweenengine/TweenEquation;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/smartisanos/smengine/BezierEquation;->mBezierSegments:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method private findTByX(FLjava/util/ArrayList;)F
    .locals 19
    .param p1, "x"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector2f;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "segment":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector2f;>;"
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/smengine/math/Vector2f;

    .line 29
    .local v10, "p1":Lcom/smartisanos/smengine/math/Vector2f;
    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/smengine/math/Vector2f;

    .line 30
    .local v11, "p2":Lcom/smartisanos/smengine/math/Vector2f;
    const/16 v17, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/smengine/math/Vector2f;

    .line 31
    .local v12, "p3":Lcom/smartisanos/smengine/math/Vector2f;
    const/16 v17, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/smartisanos/smengine/math/Vector2f;

    .line 32
    .local v13, "p4":Lcom/smartisanos/smengine/math/Vector2f;
    const/4 v7, 0x0

    .line 33
    .local v7, "low":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 34
    .local v6, "high":F
    const/high16 v9, 0x3f000000    # 0.5f

    .line 35
    .local v9, "mid":F
    move v14, v9

    .line 36
    .local v14, "t":F
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v14

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v14

    mul-float v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v14

    mul-float v2, v17, v18

    .line 37
    .local v2, "a":F
    const/high16 v17, 0x40400000    # 3.0f

    mul-float v17, v17, v14

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v14

    mul-float v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v14

    mul-float v3, v17, v18

    .line 38
    .local v3, "b":F
    const/high16 v17, 0x40400000    # 3.0f

    mul-float v17, v17, v14

    mul-float v17, v17, v14

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v14

    mul-float v4, v17, v18

    .line 39
    .local v4, "c":F
    mul-float v17, v14, v14

    mul-float v5, v17, v14

    .line 40
    .local v5, "d":F
    iget v0, v10, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v17, v0

    mul-float v17, v17, v2

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v18, v0

    mul-float v18, v18, v3

    add-float v17, v17, v18

    iget v0, v12, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v18, v0

    mul-float v18, v18, v4

    add-float v17, v17, v18

    iget v0, v13, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v18, v0

    mul-float v18, v18, v5

    add-float v16, v17, v18

    .line 41
    .local v16, "xTarget":F
    const v15, 0x3a83126f    # 0.001f

    .line 42
    .local v15, "tolerance":F
    const/16 v8, 0x3e8

    .line 43
    .local v8, "maxCount":I
    :goto_0
    sub-float v17, v16, p1

    invoke-static/range {v17 .. v17}, Lcom/smartisanos/smengine/math/FastMath;->abs(F)F

    move-result v17

    cmpl-float v17, v17, v15

    if-lez v17, :cond_1

    if-lez v8, :cond_1

    .line 44
    cmpl-float v17, v16, p1

    if-lez v17, :cond_0

    .line 45
    move v6, v9

    .line 49
    :goto_1
    add-float v17, v7, v6

    const/high16 v18, 0x40000000    # 2.0f

    div-float v9, v17, v18

    .line 50
    move v14, v9

    .line 51
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v14

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v14

    mul-float v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v14

    mul-float v2, v17, v18

    .line 52
    const/high16 v17, 0x40400000    # 3.0f

    mul-float v17, v17, v14

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v14

    mul-float v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v14

    mul-float v3, v17, v18

    .line 53
    const/high16 v17, 0x40400000    # 3.0f

    mul-float v17, v17, v14

    mul-float v17, v17, v14

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v14

    mul-float v4, v17, v18

    .line 54
    mul-float v17, v14, v14

    mul-float v5, v17, v14

    .line 55
    iget v0, v10, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v17, v0

    mul-float v17, v17, v2

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v18, v0

    mul-float v18, v18, v3

    add-float v17, v17, v18

    iget v0, v12, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v18, v0

    mul-float v18, v18, v4

    add-float v17, v17, v18

    iget v0, v13, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v18, v0

    mul-float v18, v18, v5

    add-float v16, v17, v18

    .line 56
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 47
    :cond_0
    move v7, v9

    goto :goto_1

    .line 58
    :cond_1
    if-nez v8, :cond_2

    .line 59
    sget-boolean v17, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v17, :cond_2

    sget-object v17, Lcom/smartisanos/smengine/BezierEquation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v18, "can not find most suitable t"

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 61
    :cond_2
    return v14
.end method


.method public compute(F)F
    .locals 13
    .param p1, "x"    # F

    .prologue
    .line 64
    iget-object v11, p0, Lcom/smartisanos/smengine/BezierEquation;->mBezierSegments:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 65
    .local v8, "segment":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector2f;>;"
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/smengine/math/Vector2f;

    .line 66
    .local v4, "p1":Lcom/smartisanos/smengine/math/Vector2f;
    const/4 v12, 0x3

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/smengine/math/Vector2f;

    .line 67
    .local v7, "p4":Lcom/smartisanos/smengine/math/Vector2f;
    iget v12, v4, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    cmpl-float v12, p1, v12

    if-ltz v12, :cond_0

    iget v12, v7, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    cmpg-float v12, p1, v12

    if-gtz v12, :cond_0

    .line 68
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/smengine/math/Vector2f;

    .line 69
    .local v5, "p2":Lcom/smartisanos/smengine/math/Vector2f;
    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/smengine/math/Vector2f;

    .line 70
    .local v6, "p3":Lcom/smartisanos/smengine/math/Vector2f;
    invoke-direct {p0, p1, v8}, Lcom/smartisanos/smengine/BezierEquation;->findTByX(FLjava/util/ArrayList;)F

    move-result v9

    .line 71
    .local v9, "t":F
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v9

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v9

    mul-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v9

    mul-float v0, v11, v12

    .line 72
    .local v0, "a":F
    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v9

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v9

    mul-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v9

    mul-float v1, v11, v12

    .line 73
    .local v1, "b":F
    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v9

    mul-float/2addr v11, v9

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v9

    mul-float v2, v11, v12

    .line 74
    .local v2, "c":F
    mul-float v11, v9, v9

    mul-float v3, v11, v9

    .line 75
    .local v3, "d":F
    iget v11, v4, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    mul-float/2addr v11, v0

    iget v12, v5, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    mul-float/2addr v12, v1

    add-float/2addr v11, v12

    iget v12, v6, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    mul-float/2addr v12, v2

    add-float/2addr v11, v12

    iget v12, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    mul-float/2addr v12, v3

    add-float v10, v11, v12

    .line 76
    .local v10, "y":F
    return v10

    .line 79
    .end local v0    # "a":F
    .end local v1    # "b":F
    .end local v2    # "c":F
    .end local v3    # "d":F
    .end local v4    # "p1":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v5    # "p2":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v6    # "p3":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v7    # "p4":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v8    # "segment":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector2f;>;"
    .end local v9    # "t":F
    .end local v10    # "y":F
    :cond_1
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "bezier curve has not result"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public setSegment(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector2f;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "seg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector2f;>;>;"
    iput-object p1, p0, Lcom/smartisanos/smengine/BezierEquation;->mBezierSegments:Ljava/util/ArrayList;

    .line 23
    return-void
.end method
