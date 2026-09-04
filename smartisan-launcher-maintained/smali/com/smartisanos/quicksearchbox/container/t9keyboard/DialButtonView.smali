.class public Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
.super Landroid/widget/TextView;
.source "DialButtonView.java"


.field private mIsActionDown:Z

.field private mNinePatch:Landroid/graphics/NinePatch;

.field private mRect:Landroid/graphics/Rect;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->mIsActionDown:Z

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->mRect:Landroid/graphics/Rect;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->mIsActionDown:Z

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->mRect:Landroid/graphics/Rect;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->mIsActionDown:Z

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->mRect:Landroid/graphics/Rect;

    .line 35
    return-void
.end method


.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    iget-boolean v1, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->mIsActionDown:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 62
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 63
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->mNinePatch:Landroid/graphics/NinePatch;

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a0

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v1, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->mNinePatch:Landroid/graphics/NinePatch;

    .line 67
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->mNinePatch:Landroid/graphics/NinePatch;

    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 69
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 42
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->mIsActionDown:Z

    .line 43
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->invalidate()V

    goto :goto_0

    .line 46
    :pswitch_2
    iput-boolean v1, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->mIsActionDown:Z

    .line 47
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->invalidate()V

    goto :goto_0

    .line 50
    :pswitch_3
    iput-boolean v1, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->mIsActionDown:Z

    .line 51
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->invalidate()V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
