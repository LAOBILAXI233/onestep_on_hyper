.class Lcom/android/volley/toolbox/ImageLoader$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field private final synthetic val$defaultImageResId:I

.field private final synthetic val$errorImageResId:I

.field private final synthetic val$view:Landroid/widget/ImageView;


.method constructor <init>(ILandroid/widget/ImageView;I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$errorImageResId:I

    iput-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    iput p3, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$defaultImageResId:I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 103
    iget v0, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$errorImageResId:I

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$errorImageResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 2
    .param p1, "response"    # Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget v0, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$defaultImageResId:I

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$defaultImageResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
