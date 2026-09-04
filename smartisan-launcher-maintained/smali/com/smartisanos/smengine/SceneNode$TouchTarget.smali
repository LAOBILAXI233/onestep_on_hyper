.class final Lcom/smartisanos/smengine/SceneNode$TouchTarget;
.super Ljava/lang/Object;
.source "SceneNode.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/SceneNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TouchTarget"
.end annotation


.field public static final ALL_POINTER_IDS:I = -0x1

.field private static final MAX_RECYCLED:I = 0x20

.field private static sRecycleBin:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

.field private static final sRecycleLock:Ljava/lang/Object;

.field private static sRecycledCount:I


.field public child:Lcom/smartisanos/smengine/SceneNode;

.field public next:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

.field public pointerIdBits:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2813
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2830
    return-void
.end method

.method public static obtain(Lcom/smartisanos/smengine/SceneNode;I)Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    .locals 3
    .param p0, "child"    # Lcom/smartisanos/smengine/SceneNode;
    .param p1, "pointerIdBits"    # I

    .prologue
    .line 2834
    sget-object v2, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2835
    :try_start_0
    sget-object v1, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->sRecycleBin:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    if-nez v1, :cond_0

    .line 2836
    new-instance v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    invoke-direct {v0}, Lcom/smartisanos/smengine/SceneNode$TouchTarget;-><init>()V

    .line 2843
    .local v0, "target":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2844
    iput-object p0, v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->child:Lcom/smartisanos/smengine/SceneNode;

    .line 2845
    iput p1, v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->pointerIdBits:I

    .line 2846
    return-object v0

    .line 2838
    .end local v0    # "target":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    :cond_0
    :try_start_1
    sget-object v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->sRecycleBin:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    .line 2839
    .restart local v0    # "target":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    iget-object v1, v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->next:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    sput-object v1, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->sRecycleBin:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    .line 2840
    sget v1, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->sRecycledCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->sRecycledCount:I

    .line 2841
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->next:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    goto :goto_0

    .line 2843
    .end local v0    # "target":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


.method public recycle()V
    .locals 3

    .prologue
    .line 2850
    sget-object v1, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2851
    :try_start_0
    sget v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->sRecycledCount:I

    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    .line 2852
    sget-object v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->sRecycleBin:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->next:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    .line 2853
    sput-object p0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->sRecycleBin:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    .line 2854
    sget v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->sRecycledCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->sRecycledCount:I

    .line 2858
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->child:Lcom/smartisanos/smengine/SceneNode;

    .line 2859
    monitor-exit v1

    .line 2860
    return-void

    .line 2856
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->next:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    goto :goto_0

    .line 2859
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
