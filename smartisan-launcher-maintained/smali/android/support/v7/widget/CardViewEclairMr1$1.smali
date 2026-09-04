.class Landroid/support/v7/widget/CardViewEclairMr1$1;
.super Ljava/lang/Object;
.source "CardViewEclairMr1.java"

.implements Landroid/support/v7/widget/RoundRectDrawableWithShadow$RoundRectHelper;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/CardViewEclairMr1;->initStatic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v7/widget/CardViewEclairMr1;


.method constructor <init>(Landroid/support/v7/widget/CardViewEclairMr1;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Landroid/support/v7/widget/CardViewEclairMr1$1;->this$0:Landroid/support/v7/widget/CardViewEclairMr1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "cornerRadius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 39
    const/high16 v0, 0x40000000    # 2.0f

    mul-float v9, p3, v0

    .line 40
    .local v9, "twoRadius":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float/2addr v0, v9

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v7, v0, v1

    .line 41
    .local v7, "innerWidth":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float/2addr v0, v9

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v6, v0, v1

    .line 43
    .local v6, "innerHeight":F
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_0

    .line 44
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    .line 45
    iget-object v0, p0, Landroid/support/v7/widget/CardViewEclairMr1$1;->this$0:Landroid/support/v7/widget/CardViewEclairMr1;

    iget-object v0, v0, Landroid/support/v7/widget/CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    neg-float v1, p3

    neg-float v2, p3

    invoke-virtual {v0, v1, v2, p3, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 47
    .local v8, "saved":I
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 48
    iget-object v0, p0, Landroid/support/v7/widget/CardViewEclairMr1$1;->this$0:Landroid/support/v7/widget/CardViewEclairMr1;

    iget-object v1, v0, Landroid/support/v7/widget/CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 50
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 51
    iget-object v0, p0, Landroid/support/v7/widget/CardViewEclairMr1$1;->this$0:Landroid/support/v7/widget/CardViewEclairMr1;

    iget-object v1, v0, Landroid/support/v7/widget/CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 53
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 54
    iget-object v0, p0, Landroid/support/v7/widget/CardViewEclairMr1$1;->this$0:Landroid/support/v7/widget/CardViewEclairMr1;

    iget-object v1, v0, Landroid/support/v7/widget/CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 56
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 57
    iget-object v0, p0, Landroid/support/v7/widget/CardViewEclairMr1$1;->this$0:Landroid/support/v7/widget/CardViewEclairMr1;

    iget-object v1, v0, Landroid/support/v7/widget/CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 58
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 60
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v0

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v4, v0, p3

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 63
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p3

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v0

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v0

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 68
    .end local v8    # "saved":I
    :cond_0
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v0, p2, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v2, v0

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v0

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 70
    return-void
.end method
