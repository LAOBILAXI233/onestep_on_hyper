.class public Lcom/smartisanos/smengine/ImageMap;
.super Ljava/lang/Object;
.source "ImageMap.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/ImageMap$ImageCell;
    }
.end annotation


.field private mImageCellList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/ImageMap$ImageCell;",
            ">;"
        }
    .end annotation
.end field

.field private mImageName:Ljava/lang/String;

.field private mResourceName:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/ImageMap;->mImageCellList:Ljava/util/ArrayList;

    .line 19
    iput-object p1, p0, Lcom/smartisanos/smengine/ImageMap;->mResourceName:Ljava/lang/String;

    .line 20
    return-void
.end method


.method public addImageCell(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 33
    new-instance v0, Lcom/smartisanos/smengine/ImageMap$ImageCell;

    invoke-direct {v0}, Lcom/smartisanos/smengine/ImageMap$ImageCell;-><init>()V

    .line 34
    .local v0, "ic":Lcom/smartisanos/smengine/ImageMap$ImageCell;
    iput p1, v0, Lcom/smartisanos/smengine/ImageMap$ImageCell;->x:I

    .line 35
    iput p2, v0, Lcom/smartisanos/smengine/ImageMap$ImageCell;->y:I

    .line 36
    iput p3, v0, Lcom/smartisanos/smengine/ImageMap$ImageCell;->width:I

    .line 37
    iput p4, v0, Lcom/smartisanos/smengine/ImageMap$ImageCell;->height:I

    .line 38
    iget-object v1, p0, Lcom/smartisanos/smengine/ImageMap;->mImageCellList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public clearCell()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartisanos/smengine/ImageMap;->mImageCellList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    return-void
.end method

.method public create()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/smartisanos/smengine/ImageMap;->mResourceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 25
    :cond_0
    return-void
.end method

.method public load()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public removeImageCell(IIII)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v2, "removeObj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/ImageMap$ImageCell;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/smengine/ImageMap;->mImageCellList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 43
    iget-object v3, p0, Lcom/smartisanos/smengine/ImageMap;->mImageCellList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/ImageMap$ImageCell;

    .line 44
    .local v1, "ic":Lcom/smartisanos/smengine/ImageMap$ImageCell;
    iget v3, v1, Lcom/smartisanos/smengine/ImageMap$ImageCell;->x:I

    if-ne v3, p1, :cond_0

    iget v3, v1, Lcom/smartisanos/smengine/ImageMap$ImageCell;->y:I

    if-ne v3, p2, :cond_0

    iget v3, v1, Lcom/smartisanos/smengine/ImageMap$ImageCell;->width:I

    if-ne v3, p3, :cond_0

    iget v3, v1, Lcom/smartisanos/smengine/ImageMap$ImageCell;->height:I

    if-ne v3, p4, :cond_0

    .line 45
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "ic":Lcom/smartisanos/smengine/ImageMap$ImageCell;
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/smengine/ImageMap;->mImageCellList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 49
    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/smartisanos/smengine/ImageMap;->mImageName:Ljava/lang/String;

    .line 28
    return-void
.end method
