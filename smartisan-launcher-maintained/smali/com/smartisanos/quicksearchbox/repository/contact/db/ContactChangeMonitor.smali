.class public Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;
.super Ljava/lang/Object;
.source "ContactChangeMonitor.java"


.field private static final executorInitTime:S = 0x3s

.field private static final executorPeroid:S = 0x3s

.field private static mInstance:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;


.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private newTaskCount:I

.field private oldTaskCount:I


.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 25
    iput v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->newTaskCount:I

    .line 26
    iput v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->oldTaskCount:I

    .line 33
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    .prologue
    .line 19
    iget v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->newTaskCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->newTaskCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;)I
    .locals 2
    .param p0, "x0"    # Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    .prologue
    .line 19
    iget v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->newTaskCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->newTaskCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    .prologue
    .line 19
    iget v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->oldTaskCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->oldTaskCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private destroyTimer()V
    .locals 5

    .prologue
    .line 59
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 68
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    sget-object v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->mInstance:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    invoke-direct {v0, p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->mInstance:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    .line 81
    :cond_0
    sget-object v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->mInstance:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    return-object v0
.end method

.method private initTimer()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x3

    .line 37
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 39
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$1;-><init>(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 56
    :cond_0
    return-void
.end method


.method public registMonitor()V
    .locals 4

    .prologue
    .line 85
    const-string v0, "\u6ce8\u518cMonitor...."

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$2;-><init>(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 96
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->initTimer()V

    .line 97
    return-void
.end method

.method public unRegistMonitor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 103
    :cond_0
    iput-object v2, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 104
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->destroyTimer()V

    .line 106
    sput-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->mInstance:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    .line 107
    return-void
.end method
