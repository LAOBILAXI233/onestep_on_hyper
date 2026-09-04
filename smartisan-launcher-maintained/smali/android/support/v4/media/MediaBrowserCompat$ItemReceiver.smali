.class Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;
.super Landroid/support/v4/os/ResultReceiver;
.source "MediaBrowserCompat.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemReceiver"
.end annotation


.field private final mCallback:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

.field private final mMediaId:Ljava/lang/String;


.method constructor <init>(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1778
    invoke-direct {p0, p3}, Landroid/support/v4/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 1779
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->mMediaId:Ljava/lang/String;

    .line 1780
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    .line 1781
    return-void
.end method


.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 1785
    const-class v1, Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1786
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "media_item"

    .line 1787
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1788
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->mMediaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V

    .line 1797
    :goto_0
    return-void

    .line 1791
    :cond_1
    const-string v1, "media_item"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1792
    .local v0, "item":Landroid/os/Parcelable;
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    if-eqz v1, :cond_3

    .line 1793
    :cond_2
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .end local v0    # "item":Landroid/os/Parcelable;
    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    goto :goto_0

    .line 1795
    .restart local v0    # "item":Landroid/os/Parcelable;
    :cond_3
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->mMediaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method
