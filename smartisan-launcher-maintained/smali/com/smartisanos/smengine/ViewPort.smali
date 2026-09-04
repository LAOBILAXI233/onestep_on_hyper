.class public Lcom/smartisanos/smengine/ViewPort;
.super Ljava/lang/Object;
.source "ViewPort.java"


.field private mHeight:I

.field private mWidth:I

.field private mX:I

.field private mY:I


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/smartisanos/smengine/ViewPort;->mX:I

    .line 17
    iput p2, p0, Lcom/smartisanos/smengine/ViewPort;->mY:I

    .line 18
    iput p3, p0, Lcom/smartisanos/smengine/ViewPort;->mWidth:I

    .line 19
    iput p4, p0, Lcom/smartisanos/smengine/ViewPort;->mHeight:I

    .line 20
    return-void
.end method


.method public h()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/smartisanos/smengine/ViewPort;->mHeight:I

    return v0
.end method

.method public setViewPort(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/smartisanos/smengine/ViewPort;->mX:I

    .line 27
    iput p2, p0, Lcom/smartisanos/smengine/ViewPort;->mY:I

    .line 28
    iput p3, p0, Lcom/smartisanos/smengine/ViewPort;->mWidth:I

    .line 29
    iput p4, p0, Lcom/smartisanos/smengine/ViewPort;->mHeight:I

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/ViewPort;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/ViewPort;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/ViewPort;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/ViewPort;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/smartisanos/smengine/ViewPort;->mWidth:I

    return v0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/smartisanos/smengine/ViewPort;->mX:I

    return v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/smartisanos/smengine/ViewPort;->mY:I

    return v0
.end method
