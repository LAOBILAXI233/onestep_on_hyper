.class public Lcom/smartisan/pullToRefresh/RefreshHeaderView;
.super Landroid/widget/LinearLayout;
.source "RefreshHeaderView.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/pullToRefresh/RefreshHeaderView$RefreshHeaderListener;
    }
.end annotation


.field private mClipBottom:I


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->mClipBottom:I

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->mClipBottom:I

    .line 20
    return-void
.end method


.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->mClipBottom:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 26
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 28
    return-void
.end method

.method public getClipBottom()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->mClipBottom:I

    return v0
.end method

.method public setClipBottom(I)V
    .locals 0
    .param p1, "bottom"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->mClipBottom:I

    .line 32
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->invalidate()V

    .line 33
    return-void
.end method
