.class public Lcom/smartisan/pullToRefresh/RefreshFooterView;
.super Landroid/widget/LinearLayout;
.source "RefreshFooterView.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/pullToRefresh/RefreshFooterView$RefreshFooterListener;
    }
.end annotation


.field private mClipTop:I


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisan/pullToRefresh/RefreshFooterView;->mClipTop:I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisan/pullToRefresh/RefreshFooterView;->mClipTop:I

    .line 21
    return-void
.end method


.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 26
    const/4 v0, 0x0

    iget v1, p0, Lcom/smartisan/pullToRefresh/RefreshFooterView;->mClipTop:I

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/RefreshFooterView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/RefreshFooterView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 27
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 29
    return-void
.end method

.method public getClipTop()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/smartisan/pullToRefresh/RefreshFooterView;->mClipTop:I

    return v0
.end method

.method public setClipTop(I)V
    .locals 0
    .param p1, "top"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/smartisan/pullToRefresh/RefreshFooterView;->mClipTop:I

    .line 33
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/RefreshFooterView;->invalidate()V

    .line 34
    return-void
.end method
