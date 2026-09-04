.class Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "DiskBasedCache.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountingInputStream"
.end annotation


.field private bytesRead:I


.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 437
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 434
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    .line 438
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    return v0
.end method


.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 443
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 444
    iget v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    .line 446
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 452
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 453
    iget v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    .line 455
    :cond_0
    return v0
.end method
