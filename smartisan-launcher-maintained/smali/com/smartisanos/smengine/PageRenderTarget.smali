.class public Lcom/smartisanos/smengine/PageRenderTarget;
.super Lcom/smartisanos/smengine/RenderTarget;
.source "PageRenderTarget.java"


.field private mCellHeight:I

.field private mCellWidth:I

.field private mColNum:I

.field private mHeightStep:F

.field private mRowNum:I

.field private mWidthStep:F


.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cellWidth"    # I
    .param p3, "cellHeight"    # I
    .param p4, "rowNum"    # I
    .param p5, "colNum"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    mul-int v0, p2, p5

    mul-int v1, p3, p4

    invoke-direct {p0, p1, v0, v1}, Lcom/smartisanos/smengine/RenderTarget;-><init>(Ljava/lang/String;II)V

    .line 16
    iput p4, p0, Lcom/smartisanos/smengine/PageRenderTarget;->mRowNum:I

    .line 17
    iput p5, p0, Lcom/smartisanos/smengine/PageRenderTarget;->mColNum:I

    .line 18
    iput p3, p0, Lcom/smartisanos/smengine/PageRenderTarget;->mCellHeight:I

    .line 19
    iput p2, p0, Lcom/smartisanos/smengine/PageRenderTarget;->mCellWidth:I

    .line 20
    mul-int v0, p2, p5

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/smartisanos/smengine/PageRenderTarget;->mWidthStep:F

    .line 21
    mul-int v0, p3, p4

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/smartisanos/smengine/PageRenderTarget;->mHeightStep:F

    .line 22
    return-void
.end method


.method public getUV(II)Lcom/smartisanos/smengine/RenderTarget$UV;
    .locals 10
    .param p1, "rowIndex"    # I
    .param p2, "colIndex"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 24
    iget v5, p0, Lcom/smartisanos/smengine/PageRenderTarget;->mWidthStep:F

    iget v6, p0, Lcom/smartisanos/smengine/PageRenderTarget;->mCellWidth:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    int-to-float v6, p2

    mul-float v2, v5, v6

    .line 25
    .local v2, "startU":F
    iget v5, p0, Lcom/smartisanos/smengine/PageRenderTarget;->mHeightStep:F

    iget v6, p0, Lcom/smartisanos/smengine/PageRenderTarget;->mCellHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    int-to-float v6, p1

    mul-float v3, v5, v6

    .line 26
    .local v3, "startV":F
    iget v5, p0, Lcom/smartisanos/smengine/PageRenderTarget;->mWidthStep:F

    iget v6, p0, Lcom/smartisanos/smengine/PageRenderTarget;->mCellWidth:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float v0, v2, v5

    .line 27
    .local v0, "endU":F
    iget v5, p0, Lcom/smartisanos/smengine/PageRenderTarget;->mHeightStep:F

    iget v6, p0, Lcom/smartisanos/smengine/PageRenderTarget;->mCellHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float v1, v3, v5

    .line 28
    .local v1, "endV":F
    new-instance v4, Lcom/smartisanos/smengine/RenderTarget$UV;

    invoke-direct {v4}, Lcom/smartisanos/smengine/RenderTarget$UV;-><init>()V

    .line 29
    .local v4, "uv":Lcom/smartisanos/smengine/RenderTarget$UV;
    new-array v5, v9, [F

    aput v2, v5, v7

    aput v0, v5, v8

    iput-object v5, v4, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    .line 30
    new-array v5, v9, [F

    aput v3, v5, v7

    aput v1, v5, v8

    iput-object v5, v4, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    .line 31
    return-object v4
.end method

.method public getViewPort(II)Lcom/smartisanos/smengine/ViewPort;
    .locals 5
    .param p1, "rowIndex"    # I
    .param p2, "colIndex"    # I

    .prologue
    .line 34
    iget v2, p0, Lcom/smartisanos/smengine/PageRenderTarget;->mCellWidth:I

    mul-int v0, v2, p2

    .line 35
    .local v0, "startx":I
    iget v2, p0, Lcom/smartisanos/smengine/PageRenderTarget;->mCellHeight:I

    mul-int v1, v2, p1

    .line 36
    .local v1, "starty":I
    new-instance v2, Lcom/smartisanos/smengine/ViewPort;

    iget v3, p0, Lcom/smartisanos/smengine/PageRenderTarget;->mCellWidth:I

    iget v4, p0, Lcom/smartisanos/smengine/PageRenderTarget;->mCellHeight:I

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/smartisanos/smengine/ViewPort;-><init>(IIII)V

    return-object v2
.end method
