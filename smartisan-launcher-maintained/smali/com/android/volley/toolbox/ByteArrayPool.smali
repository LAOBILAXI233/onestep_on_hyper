.class public Lcom/android/volley/toolbox/ByteArrayPool;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


.field protected static final BUF_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field


.field private mBuffersByLastUse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private mBuffersBySize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private mCurrentSize:I

.field private final mSizeLimit:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool$1;

    invoke-direct {v0}, Lcom/android/volley/toolbox/ByteArrayPool$1;-><init>()V

    sput-object v0, Lcom/android/volley/toolbox/ByteArrayPool;->BUF_COMPARATOR:Ljava/util/Comparator;

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "sizeLimit"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersByLastUse:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I

    .line 80
    iput p1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mSizeLimit:I

    .line 81
    return-void
.end method

.method private declared-synchronized trim()V
    .locals 3

    .prologue
    .line 128
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I

    iget v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mSizeLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v1, v2, :cond_0

    .line 133
    monitor-exit p0

    return-void

    .line 129
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersByLastUse:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 130
    .local v0, "buf":[B
    iget-object v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 131
    iget v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I

    array-length v2, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    .end local v0    # "buf":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


.method public declared-synchronized getBuf(I)[B
    .locals 4
    .param p1, "len"    # I

    .prologue
    .line 92
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 101
    new-array v0, p1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    .line 93
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 94
    .local v0, "buf":[B
    array-length v2, v0

    if-lt v2, p1, :cond_1

    .line 95
    iget v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I

    array-length v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I

    .line 96
    iget-object v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 97
    iget-object v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersByLastUse:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 92
    .end local v0    # "buf":[B
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0    # "buf":[B
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized returnBuf([B)V
    .locals 3
    .param p1, "buf"    # [B

    .prologue
    .line 111
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v1, p1

    iget v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mSizeLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v1, v2, :cond_1

    .line 122
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 114
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersByLastUse:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;

    sget-object v2, Lcom/android/volley/toolbox/ByteArrayPool;->BUF_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 116
    .local v0, "pos":I
    if-gez v0, :cond_2

    .line 117
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 120
    iget v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I

    .line 121
    invoke-direct {p0}, Lcom/android/volley/toolbox/ByteArrayPool;->trim()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    .end local v0    # "pos":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
