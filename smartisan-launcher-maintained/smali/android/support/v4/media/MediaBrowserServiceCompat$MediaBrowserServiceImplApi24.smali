.class Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;
.source "MediaBrowserServiceCompat.java"

.implements Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaBrowserServiceImplApi24"
.end annotation


.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;


.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/media/MediaBrowserServiceCompat;

    .prologue
    .line 354
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    return-void
.end method


.method public getBrowserRootHints()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->getBrowserRootHints(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 365
    if-nez p2, :cond_0

    .line 366
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->notifyChildrenChanged(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->notifyChildrenChanged(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->createService(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;->mServiceObj:Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->onCreate(Ljava/lang/Object;)V

    .line 361
    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "resultWrapper"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 376
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;)V

    .line 397
    .local v0, "result":Landroid/support/v4/media/MediaBrowserServiceCompat$Result;, "Landroid/support/v4/media/MediaBrowserServiceCompat$Result<Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;>;"
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {v1, p1, v0, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V

    .line 398
    return-void
.end method
