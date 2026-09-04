.class Lcom/smartisanos/launcher/data/Utils$GenerateColorInfoTask;
.super Ljava/lang/Object;
.source "Utils.java"

.implements Ljava/util/concurrent/Callable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/data/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenerateColorInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


.field private final itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>(Lcom/smartisanos/launcher/data/ItemInfo;Ljava/util/List;)V
    .locals 0
    .param p1, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 839
    .local p2, "contentValueses":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 840
    iput-object p1, p0, Lcom/smartisanos/launcher/data/Utils$GenerateColorInfoTask;->itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 841
    iput-object p2, p0, Lcom/smartisanos/launcher/data/Utils$GenerateColorInfoTask;->values:Ljava/util/List;

    .line 842
    return-void
.end method


.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/Utils$GenerateColorInfoTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 846
    iget-object v3, p0, Lcom/smartisanos/launcher/data/Utils$GenerateColorInfoTask;->itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Utils;->iconDataToBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 847
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    invoke-static {v0, v3, v4}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 848
    invoke-static {v0}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->getMajorColor(Landroid/graphics/Bitmap;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v1

    .line 849
    .local v1, "color":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 850
    iget-object v3, p0, Lcom/smartisanos/launcher/data/Utils$GenerateColorInfoTask;->itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->setOwner(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 851
    iget-object v3, p0, Lcom/smartisanos/launcher/data/Utils$GenerateColorInfoTask;->itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iput-object v1, v3, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 852
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 853
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v3, "owner"

    iget-object v4, p0, Lcom/smartisanos/launcher/data/Utils$GenerateColorInfoTask;->itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 854
    const-string v3, "color_info"

    invoke-virtual {v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-object v3, p0, Lcom/smartisanos/launcher/data/Utils$GenerateColorInfoTask;->values:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    const/4 v3, 0x0

    return-object v3
.end method
