.class public Lcom/android/volley/Cache$Entry;
.super Ljava/lang/Object;
.source "Cache.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


.field public data:[B

.field public etag:Ljava/lang/String;

.field public responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public serverDate:J

.field public softTtl:J

.field public ttl:J


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 67
    return-void
.end method


.method public isExpired()Z
    .locals 4

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/volley/Cache$Entry;->ttl:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshNeeded()Z
    .locals 4

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/volley/Cache$Entry;->softTtl:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
