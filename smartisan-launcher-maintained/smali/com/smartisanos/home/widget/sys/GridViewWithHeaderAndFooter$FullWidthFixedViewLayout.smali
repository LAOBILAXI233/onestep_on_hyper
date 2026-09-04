.class Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;
.super Landroid/widget/FrameLayout;
.source "GridViewWithHeaderAndFooter.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullWidthFixedViewLayout"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;


.method public constructor <init>(Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;

    .line 435
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 436
    return-void
.end method


.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 440
    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;

    invoke-virtual {v1}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->getPaddingLeft()I

    move-result v2

    add-int v0, v1, v2

    .line 442
    .local v0, "realLeft":I
    if-eq v0, p2, :cond_0

    .line 443
    sub-int v1, v0, p2

    invoke-virtual {p0, v1}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->offsetLeftAndRight(I)V

    .line 445
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 446
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 450
    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;

    invoke-virtual {v1}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;

    .line 451
    invoke-virtual {v2}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;

    .line 452
    invoke-virtual {v2}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;->getPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    .line 454
    .local v0, "targetWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 453
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 455
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 456
    return-void
.end method
