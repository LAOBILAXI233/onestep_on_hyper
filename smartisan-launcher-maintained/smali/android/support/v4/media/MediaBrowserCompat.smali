.class public final Landroid/support/v4/media/MediaBrowserCompat;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;,
        Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;,
        Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;,
        Landroid/support/v4/media/MediaBrowserCompat$Subscription;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi24;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;,
        Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;,
        Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;,
        Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    }
.end annotation


.field static final DEBUG:Z

.field public static final EXTRA_PAGE:Ljava/lang/String; = "android.media.browse.extra.PAGE"

.field public static final EXTRA_PAGE_SIZE:Ljava/lang/String; = "android.media.browse.extra.PAGE_SIZE"

.field static final TAG:Ljava/lang/String; = "MediaBrowserCompat"


.field private final mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;


.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "MediaBrowserCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;
    .param p3, "callback"    # Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
    .param p4, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi24;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi24;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    .line 110
    :goto_0
    return-void

    .line 103
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 104
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    goto :goto_0

    .line 105
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 106
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    goto :goto_0

    .line 108
    :cond_3
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    goto :goto_0
.end method


.method public connect()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->connect()V

    .line 121
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->disconnect()V

    .line 129
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cb"    # Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 299
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->getItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V

    .line 300
    return-void
.end method

.method public getRoot()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->getRoot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->isConnected()Z

    move-result v0

    return v0
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "callback"    # Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    if-nez p3, :cond_1

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1
    if-nez p2, :cond_2

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "options are null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_2
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    .line 248
    return-void
.end method

.method public subscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    if-nez p2, :cond_1

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    .line 211
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->unsubscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    .line 266
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    if-nez p2, :cond_1

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->unsubscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    .line 288
    return-void
.end method
