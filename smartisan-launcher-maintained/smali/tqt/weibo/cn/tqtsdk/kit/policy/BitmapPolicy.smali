.class public Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;
.super Ljava/lang/Object;
.source "BitmapPolicy.java"


.field private static final MAX_MEMORY_THRESHOLD:J = 0x5f5e100L

.field private static sBitmapPolicy:Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;


.field private mDefaultInSampleSize:I

.field private mDefaultReqHeight:I

.field private mDefaultReqWidth:I

.field private mInPreferredConfig:Landroid/graphics/Bitmap$Config;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;->sBitmapPolicy:Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x1e0

    iput v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;->mDefaultReqWidth:I

    .line 30
    const/16 v0, 0x320

    iput v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;->mDefaultReqHeight:I

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;->mDefaultInSampleSize:I

    .line 36
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;->mInPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public static declared-synchronized getInstance()Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;
    .locals 2

    .prologue
    .line 39
    const-class v1, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;->sBitmapPolicy:Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;

    invoke-direct {v0}, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;-><init>()V

    sput-object v0, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;->sBitmapPolicy:Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;

    .line 42
    :cond_0
    sget-object v0, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;->sBitmapPolicy:Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


.method public calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    .prologue
    .line 76
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 77
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 78
    const/4 v0, 0x1

    .line 80
    if-gt v1, p3, :cond_0

    if-le v2, p2, :cond_1

    .line 82
    :cond_0
    div-int/lit8 v1, v1, 0x2

    .line 83
    div-int/lit8 v2, v2, 0x2

    .line 87
    :goto_0
    div-int v3, v1, v0

    if-le v3, p3, :cond_1

    div-int v3, v2, v0

    if-le v3, p2, :cond_1

    .line 89
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 93
    :cond_1
    return v0
.end method

.method public getBitmapFromPath(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 97
    if-nez p1, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    .line 100
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 101
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 102
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;->mInPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 103
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 105
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 106
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 107
    if-eqz p2, :cond_1

    .line 108
    invoke-virtual {p0}, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;->getDefaultInSampleSize()I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 110
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 111
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultInSampleSize()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;->mDefaultInSampleSize:I

    return v0
.end method

.method public getDefaultReqHeight()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;->mDefaultReqHeight:I

    return v0
.end method

.method public getDefaultReqWidth()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;->mDefaultReqWidth:I

    return v0
.end method

.method public getInPreferredConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;->mInPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 47
    invoke-static {p1}, Ltqt/weibo/cn/tqtsdk/kit/b/l;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;->mDefaultReqWidth:I

    .line 48
    invoke-static {p1}, Ltqt/weibo/cn/tqtsdk/kit/b/l;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;->mDefaultReqHeight:I

    .line 49
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x5f5e100

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;->mDefaultInSampleSize:I

    .line 51
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;->mInPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/kit/policy/BitmapPolicy;->mInPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method
