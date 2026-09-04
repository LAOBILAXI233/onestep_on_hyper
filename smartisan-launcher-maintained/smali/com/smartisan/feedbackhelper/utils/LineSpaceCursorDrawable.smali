.class public Lcom/smartisan/feedbackhelper/utils/LineSpaceCursorDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "LineSpaceCursorDrawable.java"


.field private mHeight:I


.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisan/feedbackhelper/utils/LineSpaceCursorDrawable;->setDither(Z)V

    .line 16
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/utils/LineSpaceCursorDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/smartisan/feedbackhelper/R$color;->custom_edittext_cursor:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    sget v0, Lcom/smartisan/feedbackhelper/R$dimen;->custom_edittext_width:I

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/smartisan/feedbackhelper/utils/LineSpaceCursorDrawable;->setIntrinsicWidth(I)V

    .line 19
    sget v0, Lcom/smartisan/feedbackhelper/R$dimen;->custom_edittext_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/smartisan/feedbackhelper/utils/LineSpaceCursorDrawable;->mHeight:I

    .line 20
    return-void
.end method


.method public setBounds(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 24
    iget v0, p0, Lcom/smartisan/feedbackhelper/utils/LineSpaceCursorDrawable;->mHeight:I

    add-int/2addr v0, p2

    invoke-super {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 25
    const-string v0, "533"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setBounds rect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/utils/LineSpaceCursorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method
