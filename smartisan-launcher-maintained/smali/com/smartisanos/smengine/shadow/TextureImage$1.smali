.class Lcom/smartisanos/smengine/shadow/TextureImage$1;
.super Ljava/lang/Object;
.source "TextureImage.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/smengine/shadow/TextureImage;->loadImageBitmap()V
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
    .line 101
    iput-object p1, p0, Lcom/smartisanos/smengine/shadow/TextureImage$1;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage$1;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v1}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$000(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 106
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage$1;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v1}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$100(Lcom/smartisanos/smengine/shadow/TextureImage;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 111
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/smengine/shadow/TextureImage$1;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v2}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$100(Lcom/smartisanos/smengine/shadow/TextureImage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 112
    .local v0, "is":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage$1;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$002(Lcom/smartisanos/smengine/shadow/TextureImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 113
    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage$1;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v1}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$000(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage$1;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$302(Lcom/smartisanos/smengine/shadow/TextureImage;Z)Z

    .line 133
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->updateGLView()V

    goto :goto_0

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage$1;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v1}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$200(Lcom/smartisanos/smengine/shadow/TextureImage;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 121
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage$1;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v1}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$200(Lcom/smartisanos/smengine/shadow/TextureImage;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 122
    .restart local v0    # "is":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage$1;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartisanos/smengine/shadow/TextureImage;->access$002(Lcom/smartisanos/smengine/shadow/TextureImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 123
    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 126
    .end local v0    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 116
    :catch_1
    move-exception v1

    goto :goto_1
.end method
