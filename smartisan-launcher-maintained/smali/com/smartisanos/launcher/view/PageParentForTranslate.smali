.class public Lcom/smartisanos/launcher/view/PageParentForTranslate;
.super Lcom/smartisanos/smengine/SceneNode;
.source "PageParentForTranslate.java"


.field private mCurrentPageIndex:I

.field private mMustBeDisplayedPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScroll:Z

.field private mPageGroupNum:I

.field private mPageGroupSpanX:F

.field private mPageNumInOnePageGroup:I

.field private mPageView:Lcom/smartisanos/launcher/view/PageView;

.field private mTranslateX:F


.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mMustBeDisplayedPages:Ljava/util/ArrayList;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mOnScroll:Z

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mTranslateX:F

    .line 23
    return-void
.end method

.method private UpdatesMustBeDisplayedPages()V
    .locals 5

    .prologue
    .line 72
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mMustBeDisplayedPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 73
    iget v3, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mCurrentPageIndex:I

    add-int/lit8 v1, v3, -0x1

    .local v1, "pageGroupIndex":I
    :goto_0
    iget v3, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mCurrentPageIndex:I

    add-int/lit8 v3, v3, 0x1

    if-gt v1, v3, :cond_3

    .line 74
    if-ltz v1, :cond_0

    iget v3, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageGroupNum:I

    if-lt v1, v3, :cond_1

    .line 73
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageNumInOnePageGroup:I

    if-ge v0, v3, :cond_0

    .line 78
    iget v3, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageNumInOnePageGroup:I

    mul-int/2addr v3, v1

    add-int v2, v0, v3

    .line 79
    .local v2, "pageIndex":I
    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 80
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mMustBeDisplayedPages:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    .end local v0    # "i":I
    .end local v2    # "pageIndex":I
    :cond_3
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mMustBeDisplayedPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/PageView;->loadContentForPages(Ljava/util/ArrayList;)V

    .line 85
    return-void
.end method

.method private onXChanged(F)V
    .locals 3
    .param p1, "x"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mTranslateX:F

    .line 56
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mOnScroll:Z

    if-nez v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget v1, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mTranslateX:F

    neg-float v1, v1

    iget v2, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageGroupSpanX:F

    div-float v0, v1, v2

    .line 59
    .local v0, "currentPageIndex":F
    iget v1, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mCurrentPageIndex:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 62
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mCurrentPageIndex:I

    .line 63
    iget v1, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mCurrentPageIndex:I

    if-gez v1, :cond_3

    .line 64
    const/4 v1, 0x0

    iput v1, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mCurrentPageIndex:I

    .line 68
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->UpdatesMustBeDisplayedPages()V

    goto :goto_0

    .line 65
    :cond_3
    iget v1, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mCurrentPageIndex:I

    iget v2, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageGroupNum:I

    if-lt v1, v2, :cond_2

    .line 66
    iget v1, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageGroupNum:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mCurrentPageIndex:I

    goto :goto_1
.end method


.method public setOnScroll(Z)V
    .locals 2
    .param p1, "onScroll"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mOnScroll:Z

    .line 39
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mOnScroll:Z

    if-eqz v0, :cond_1

    .line 40
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 41
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getGroupNum()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageNumInOnePageGroup:I

    .line 42
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageNumInOnePageGroup:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageGroupNum:I

    .line 43
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getSpan()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageGroupSpanX:F

    .line 44
    iget v0, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mTranslateX:F

    neg-float v0, v0

    iget v1, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageGroupSpanX:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mCurrentPageIndex:I

    .line 45
    iget v0, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mCurrentPageIndex:I

    if-gez v0, :cond_2

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mCurrentPageIndex:I

    .line 50
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->UpdatesMustBeDisplayedPages()V

    .line 52
    :cond_1
    return-void

    .line 47
    :cond_2
    iget v0, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mCurrentPageIndex:I

    iget v1, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageGroupNum:I

    if-lt v0, v1, :cond_0

    .line 48
    iget v0, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mPageGroupNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/PageParentForTranslate;->mCurrentPageIndex:I

    goto :goto_0
.end method

.method public setTranslate(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 28
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->onXChanged(F)V

    .line 29
    return-void
.end method

.method public setTranslateX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setTranslateX(F)V

    .line 34
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->onXChanged(F)V

    .line 35
    return-void
.end method
