.class Landroid/support/v7/widget/CardViewApi21;
.super Ljava/lang/Object;
.source "CardViewApi21.java"

.implements Landroid/support/v7/widget/CardViewImpl;


.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public getElevation(Landroid/support/v7/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 77
    check-cast p1, Landroid/view/View;

    .end local p1    # "cardView":Landroid/support/v7/widget/CardViewDelegate;
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public getMaxElevation(Landroid/support/v7/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 52
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawable;

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawable;

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawable;->getPadding()F

    move-result v0

    return v0
.end method

.method public getMinHeight(Landroid/support/v7/widget/CardViewDelegate;)F
    .locals 2
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->getRadius(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getMinWidth(Landroid/support/v7/widget/CardViewDelegate;)F
    .locals 2
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->getRadius(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRadius(Landroid/support/v7/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 67
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawable;

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawable;

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawable;->getRadius()F

    move-result v0

    return v0
.end method

.method public initStatic()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public initialize(Landroid/support/v7/widget/CardViewDelegate;Landroid/content/Context;IFFF)V
    .locals 3
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "backgroundColor"    # I
    .param p4, "radius"    # F
    .param p5, "elevation"    # F
    .param p6, "maxElevation"    # F

    .prologue
    .line 26
    new-instance v0, Landroid/support/v7/widget/RoundRectDrawable;

    invoke-direct {v0, p3, p4}, Landroid/support/v7/widget/RoundRectDrawable;-><init>(IF)V

    .line 27
    .local v0, "backgroundDrawable":Landroid/support/v7/widget/RoundRectDrawable;
    invoke-interface {p1, v0}, Landroid/support/v7/widget/CardViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v1, p1

    .line 28
    check-cast v1, Landroid/view/View;

    .line 29
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 30
    invoke-virtual {v1, p5}, Landroid/view/View;->setElevation(F)V

    .line 31
    invoke-virtual {p0, p1, p6}, Landroid/support/v7/widget/CardViewApi21;->setMaxElevation(Landroid/support/v7/widget/CardViewDelegate;F)V

    .line 32
    return-void
.end method

.method public onCompatPaddingChanged(Landroid/support/v7/widget/CardViewDelegate;)V
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->getMaxElevation(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/CardViewApi21;->setMaxElevation(Landroid/support/v7/widget/CardViewDelegate;F)V

    .line 98
    return-void
.end method

.method public onPreventCornerOverlapChanged(Landroid/support/v7/widget/CardViewDelegate;)V
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->getMaxElevation(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/CardViewApi21;->setMaxElevation(Landroid/support/v7/widget/CardViewDelegate;F)V

    .line 103
    return-void
.end method

.method public setBackgroundColor(Landroid/support/v7/widget/CardViewDelegate;I)V
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "color"    # I

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawable;

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawable;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RoundRectDrawable;->setColor(I)V

    .line 108
    return-void
.end method

.method public setElevation(Landroid/support/v7/widget/CardViewDelegate;F)V
    .locals 0
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "elevation"    # F

    .prologue
    .line 72
    check-cast p1, Landroid/view/View;

    .end local p1    # "cardView":Landroid/support/v7/widget/CardViewDelegate;
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 73
    return-void
.end method

.method public setMaxElevation(Landroid/support/v7/widget/CardViewDelegate;F)V
    .locals 3
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "maxElevation"    # F

    .prologue
    .line 45
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawable;

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawable;

    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getUseCompatPadding()Z

    move-result v1

    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/support/v7/widget/RoundRectDrawable;->setPadding(FZZ)V

    .line 47
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 48
    return-void
.end method

.method public setRadius(Landroid/support/v7/widget/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "radius"    # F

    .prologue
    .line 36
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawable;

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawable;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RoundRectDrawable;->setRadius(F)V

    .line 37
    return-void
.end method

.method public updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V
    .locals 6
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    const/4 v5, 0x0

    .line 82
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getUseCompatPadding()Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    invoke-interface {p1, v5, v5, v5, v5}, Landroid/support/v7/widget/CardViewDelegate;->setShadowPadding(IIII)V

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->getMaxElevation(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v0

    .line 87
    .local v0, "elevation":F
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->getRadius(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v2

    .line 88
    .local v2, "radius":F
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v4

    invoke-static {v0, v2, v4}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 90
    .local v1, "hPadding":I
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v4

    invoke-static {v0, v2, v4}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 92
    .local v3, "vPadding":I
    invoke-interface {p1, v1, v3, v1, v3}, Landroid/support/v7/widget/CardViewDelegate;->setShadowPadding(IIII)V

    goto :goto_0
.end method
