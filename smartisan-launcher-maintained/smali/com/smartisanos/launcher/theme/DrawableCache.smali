.class public Lcom/smartisanos/launcher/theme/DrawableCache;
.super Ljava/lang/Object;
.source "DrawableCache.java"


.field private mThumbnailCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/util/LruCache;

    const/high16 v1, 0x600000

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/DrawableCache;->mThumbnailCache:Landroid/util/LruCache;

    .line 12
    return-void
.end method


.method public clear()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/DrawableCache;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 28
    return-void
.end method

.method public getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/DrawableCache;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public putImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 15
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/DrawableCache;->mThumbnailCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/DrawableCache;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/DrawableCache;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_0
    monitor-exit v1

    .line 20
    return-void

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
