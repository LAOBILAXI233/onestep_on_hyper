.class public Lsmartisanos/app/MenuDialogTextView;
.super Landroid/widget/TextView;
.source "MenuDialogTextView.java"


.field private limitX:F

.field private screenWidth:I


.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 20
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v1, 0x42ba0000    # 93.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    iput v1, p0, Lsmartisanos/app/MenuDialogTextView;->limitX:F

    .line 21
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lsmartisanos/app/MenuDialogTextView;->screenWidth:I

    .line 22
    return-void
.end method


.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 26
    invoke-virtual {p0}, Lsmartisanos/app/MenuDialogTextView;->getWidth()I

    move-result v1

    .line 28
    .local v1, "width":I
    iget v4, p0, Lsmartisanos/app/MenuDialogTextView;->screenWidth:I

    if-gt v1, v4, :cond_1

    .line 29
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 49
    :cond_0
    :goto_0
    return v3

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 33
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 34
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 49
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 36
    :pswitch_0
    iget v4, p0, Lsmartisanos/app/MenuDialogTextView;->limitX:F

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_0

    int-to-float v4, v1

    iget v5, p0, Lsmartisanos/app/MenuDialogTextView;->limitX:F

    sub-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    goto :goto_0

    .line 44
    :pswitch_1
    iget v4, p0, Lsmartisanos/app/MenuDialogTextView;->limitX:F

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_3

    int-to-float v4, v1

    iget v5, p0, Lsmartisanos/app/MenuDialogTextView;->limitX:F

    sub-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    .line 45
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lsmartisanos/app/MenuDialogTextView;->setPressed(Z)V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
