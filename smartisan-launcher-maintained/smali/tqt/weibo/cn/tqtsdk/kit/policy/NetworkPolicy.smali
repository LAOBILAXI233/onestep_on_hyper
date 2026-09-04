.class public Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;
.super Ljava/lang/Object;
.source "NetworkPolicy.java"


.field private static final LARGE_BUFFER_SIZE:I = 0x19000

.field private static final MAX_MEMORY_THRESHOLD:J = 0x5f5e100L

.field private static final SMALL_BUFFER_SIZE:I = 0x2800

.field private static sNetworkPolicy:Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;


.field private mAvailableProcessors:I

.field private mDefaultProcessors:I

.field private mMaxProcessors:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->sNetworkPolicy:Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->mMaxProcessors:I

    .line 26
    iput v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->mAvailableProcessors:I

    .line 27
    iput v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->mDefaultProcessors:I

    return-void
.end method

.method public static declared-synchronized getInstance()Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;
    .locals 2

    .prologue
    .line 30
    const-class v1, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->sNetworkPolicy:Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;

    invoke-direct {v0}, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;-><init>()V

    sput-object v0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->sNetworkPolicy:Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;

    .line 34
    :cond_0
    sget-object v0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->sNetworkPolicy:Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


.method public getAvailableProcessors()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->mAvailableProcessors:I

    return v0
.end method

.method public getBufferSize(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x5f5e100

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {p1}, Ltqt/weibo/cn/tqtsdk/kit/b/j;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    const/16 v0, 0x2800

    .line 66
    :goto_0
    return v0

    :cond_1
    const v0, 0x19000

    goto :goto_0
.end method

.method public getDefaultProcessors()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->mDefaultProcessors:I

    return v0
.end method

.method public getMaxProcessors()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->mMaxProcessors:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 39
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->mAvailableProcessors:I

    .line 41
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x5f5e100

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->mAvailableProcessors:I

    if-le v0, v4, :cond_0

    .line 42
    iget v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->mAvailableProcessors:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->mDefaultProcessors:I

    .line 45
    :cond_0
    iget v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->mAvailableProcessors:I

    if-gez v0, :cond_1

    .line 46
    iput v4, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->mAvailableProcessors:I

    .line 49
    :cond_1
    iget v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->mDefaultProcessors:I

    if-gez v0, :cond_2

    .line 50
    iput v4, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->mDefaultProcessors:I

    .line 53
    :cond_2
    iget v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->mAvailableProcessors:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->mMaxProcessors:I

    .line 54
    return-void
.end method
