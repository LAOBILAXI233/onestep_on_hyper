.class public Lcom/smartisanos/smengine/FrameAnimation;
.super Lcom/smartisanos/smengine/Animation;
.source "FrameAnimation.java"


.field protected mFolderName:Ljava/lang/String;

.field protected mFrameImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFrameIndex:I

.field protected mFrameNum:I

.field protected mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/SceneNode;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/FrameAnimation;->mNodes:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/FrameAnimation;->mFrameImageList:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/SceneNode;I)V
    .locals 1
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "frameNum"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/FrameAnimation;->mNodes:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/FrameAnimation;->mFrameImageList:Ljava/util/ArrayList;

    .line 20
    iget-object v0, p0, Lcom/smartisanos/smengine/FrameAnimation;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iput p2, p0, Lcom/smartisanos/smengine/FrameAnimation;->mFrameNum:I

    .line 22
    return-void
.end method

.method public constructor <init>([Lcom/smartisanos/smengine/SceneNode;I)V
    .locals 4
    .param p1, "sn"    # [Lcom/smartisanos/smengine/SceneNode;
    .param p2, "frameNum"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation;-><init>()V

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/FrameAnimation;->mNodes:Ljava/util/ArrayList;

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/FrameAnimation;->mFrameImageList:Ljava/util/ArrayList;

    .line 25
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 26
    .local v0, "node":Lcom/smartisanos/smengine/SceneNode;
    iget-object v3, p0, Lcom/smartisanos/smengine/FrameAnimation;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "node":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    iput p2, p0, Lcom/smartisanos/smengine/FrameAnimation;->mFrameNum:I

    .line 29
    return-void
.end method

.method public static createFromImages(Ljava/lang/String;Ljava/util/ArrayList;II)V
    .locals 20
    .param p0, "folderName"    # Ljava/lang/String;
    .param p2, "rowNum"    # I
    .param p3, "colNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 74
    .local v11, "path0":Ljava/lang/String;
    invoke-static {v11}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 75
    .local v2, "bmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 76
    .local v16, "width":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 77
    .local v6, "height":I
    mul-int v15, v16, p3

    .line 78
    .local v15, "totalWidth":I
    mul-int v14, v6, p2

    .line 79
    .local v14, "totalHeight":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 80
    .local v5, "config":Landroid/graphics/Bitmap$Config;
    invoke-static {v15, v14, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 81
    .local v13, "totalBmap":Landroid/graphics/Bitmap;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 82
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 83
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 84
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v7, 0x0

    .line 85
    .local v7, "i":I
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 86
    .local v9, "p":Landroid/graphics/Paint;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 87
    .local v8, "name":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, "path":Ljava/lang/String;
    invoke-static {v10}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 89
    div-int v12, v7, p3

    .line 90
    .local v12, "rowIndex":I
    rem-int v4, v7, p3

    .line 91
    .local v4, "colIndex":I
    mul-int v18, v4, v16

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-int v19, v12, v6

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v2, v0, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 93
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    add-int/lit8 v7, v7, 0x1

    .line 95
    goto :goto_0

    .line 97
    .end local v4    # "colIndex":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "path":Ljava/lang/String;
    .end local v12    # "rowIndex":I
    :cond_0
    return-void
.end method


.method public createTexture()V
    .locals 8

    .prologue
    .line 52
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v5

    .line 53
    .local v5, "tm":Lcom/smartisanos/smengine/TextureManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/smartisanos/smengine/FrameAnimation;->mFrameImageList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 54
    iget-object v6, p0, Lcom/smartisanos/smengine/FrameAnimation;->mFrameImageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 55
    .local v3, "texName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/smartisanos/smengine/FrameAnimation;->mFolderName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v5, v2}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v4

    .line 57
    .local v4, "texture":Lcom/smartisanos/smengine/Texture;
    if-nez v4, :cond_0

    .line 58
    invoke-static {v2}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    .local v0, "bmap":Landroid/graphics/Bitmap;
    new-instance v4, Lcom/smartisanos/smengine/Texture;

    .end local v4    # "texture":Lcom/smartisanos/smengine/Texture;
    invoke-direct {v4, v0}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 60
    .restart local v4    # "texture":Lcom/smartisanos/smengine/Texture;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 61
    invoke-virtual {v4}, Lcom/smartisanos/smengine/Texture;->bind()Z

    .line 62
    invoke-virtual {v5, v2, v4}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 53
    .end local v0    # "bmap":Landroid/graphics/Bitmap;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "texName":Ljava/lang/String;
    .end local v4    # "texture":Lcom/smartisanos/smengine/Texture;
    :cond_1
    return-void
.end method

.method public onFrame(F)V
    .locals 6
    .param p1, "deltaT"    # F

    .prologue
    .line 108
    iget-boolean v3, p0, Lcom/smartisanos/smengine/FrameAnimation;->mIsStarted:Z

    if-nez v3, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget v3, p0, Lcom/smartisanos/smengine/FrameAnimation;->mFrameIndex:I

    iget v4, p0, Lcom/smartisanos/smengine/FrameAnimation;->mFrameNum:I

    if-lt v3, v4, :cond_2

    .line 112
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/smartisanos/smengine/FrameAnimation;->mIsFinished:Z

    goto :goto_0

    .line 115
    :cond_2
    iget-object v3, p0, Lcom/smartisanos/smengine/FrameAnimation;->mFrameImageList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/smartisanos/smengine/FrameAnimation;->mFrameIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/smartisanos/smengine/FrameAnimation;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/SceneNode;

    .line 117
    .local v2, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v0

    .line 118
    .local v0, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-eqz v0, :cond_3

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/smartisanos/smengine/FrameAnimation;->mFolderName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setFolderPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/smartisanos/smengine/FrameAnimation;->mFolderName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setFrameImageList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/smartisanos/smengine/FrameAnimation;->mFrameImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    iget-object v0, p0, Lcom/smartisanos/smengine/FrameAnimation;->mFrameImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/FrameAnimation;->mFrameNum:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/FrameAnimation;->mFrameIndex:I

    .line 71
    return-void
.end method

.method public setFrameNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/smartisanos/smengine/FrameAnimation;->mFrameNum:I

    .line 47
    return-void
.end method

.method public setSceneNode(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 1
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smartisanos/smengine/FrameAnimation;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public setSceneNode([Lcom/smartisanos/smengine/SceneNode;)V
    .locals 4
    .param p1, "sn"    # [Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 40
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 41
    .local v0, "node":Lcom/smartisanos/smengine/SceneNode;
    iget-object v3, p0, Lcom/smartisanos/smengine/FrameAnimation;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "node":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iput-boolean v1, p0, Lcom/smartisanos/smengine/FrameAnimation;->mIsFinished:Z

    .line 101
    iput-boolean v1, p0, Lcom/smartisanos/smengine/FrameAnimation;->mIsPaused:Z

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/smartisanos/smengine/FrameAnimation;->mIsStarted:Z

    .line 103
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getAnimationManager()Lcom/smartisanos/smengine/AnimationManager;

    move-result-object v0

    .line 104
    .local v0, "am":Lcom/smartisanos/smengine/AnimationManager;
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/AnimationManager;->start(Lcom/smartisanos/smengine/Animation;)V

    .line 105
    return-void
.end method
