.class Lcom/smartisanos/smengine/shadow/TextureImage$2;
.super Ljava/lang/Object;
.source "TextureImage.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/smengine/shadow/TextureImage;->loadCubeImageBitmaps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/smengine/shadow/TextureImage;


.method constructor <init>(Lcom/smartisanos/smengine/shadow/TextureImage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/smengine/shadow/TextureImage;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/smartisanos/smengine/shadow/TextureImage$2;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    .line 150
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/TextureImage$2;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v6}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$400(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/util/SparseArray;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/TextureImage$2;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v6}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$400(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lt v6, v8, :cond_1

    .line 151
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/TextureImage$2;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    invoke-static {v6, v7}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$402(Lcom/smartisanos/smengine/shadow/TextureImage;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 155
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/TextureImage$2;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v6}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$500(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/util/SparseArray;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 156
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/TextureImage$2;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v6}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$500(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 157
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_5

    .line 159
    :try_start_0
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/TextureImage$2;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v6}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$500(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 160
    .local v3, "key":I
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/TextureImage$2;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v6}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$500(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 161
    .local v5, "val":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->getContext()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 162
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/TextureImage$2;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v6}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$400(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    if-eqz v2, :cond_2

    .line 165
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "key":I
    .end local v5    # "val":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    .end local v1    # "i":I
    .end local v4    # "size":I
    :cond_3
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/TextureImage$2;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v6}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$600(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/util/SparseArray;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 172
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/TextureImage$2;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v6}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$600(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 173
    .restart local v4    # "size":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v4, :cond_5

    .line 175
    :try_start_1
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/TextureImage$2;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v6}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$600(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 176
    .restart local v3    # "key":I
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/TextureImage$2;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v6}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$600(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 177
    .restart local v5    # "val":Ljava/lang/String;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 178
    .restart local v2    # "is":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 179
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/TextureImage$2;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v6}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$400(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    if-eqz v2, :cond_4

    .line 181
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 173
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "key":I
    .end local v5    # "val":Ljava/lang/String;
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 189
    .end local v1    # "i":I
    .end local v4    # "size":I
    :cond_5
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/TextureImage$2;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v6}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$400(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/util/SparseArray;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/TextureImage$2;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v6}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$400(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lt v6, v8, :cond_0

    .line 190
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/TextureImage$2;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$302(Lcom/smartisanos/smengine/shadow/TextureImage;Z)Z

    .line 191
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->updateGLView()V

    goto/16 :goto_0

    .line 183
    .restart local v1    # "i":I
    .restart local v4    # "size":I
    :catch_0
    move-exception v6

    goto :goto_4

    .line 167
    :catch_1
    move-exception v6

    goto :goto_2
.end method
