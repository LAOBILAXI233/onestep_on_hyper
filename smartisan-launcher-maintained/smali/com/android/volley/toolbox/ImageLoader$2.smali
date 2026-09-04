.class Lcom/android/volley/toolbox/ImageLoader$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

.implements Lcom/android/volley/Response$Listener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


.field final synthetic this$0:Lcom/android/volley/toolbox/ImageLoader;

.field private final synthetic val$cacheKey:Ljava/lang/String;


.method constructor <init>(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$2;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    iput-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$2;->val$cacheKey:Ljava/lang/String;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onResponse(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "response"    # Landroid/graphics/Bitmap;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$2;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader$2;->val$cacheKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/volley/toolbox/ImageLoader;->access$2(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 224
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/ImageLoader$2;->onResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method
