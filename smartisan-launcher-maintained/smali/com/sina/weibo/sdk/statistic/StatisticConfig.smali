.class Lcom/sina/weibo/sdk/statistic/StatisticConfig;
.super Ljava/lang/Object;
.source "StatisticConfig.java"


.field public static ACTIVITY_DURATION_OPEN:Z = false

.field private static final DEFAULT_UPLOAD_INTERVAL:J = 0x15f90L

.field private static final MAX_UPLOAD_INTERVAL:J = 0x1b77400L

.field public static final MIN_UPLOAD_INTERVAL:J = 0x7530L

.field public static kContinueSessionMillis:J

.field private static kForceUploadInterval:J

.field private static kUploadInterval:J

.field private static mAppkey:Ljava/lang/String;

.field private static mChannel:Ljava/lang/String;

.field private static mNeedGizp:Z


.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x7530

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 12
    sput-object v1, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->mAppkey:Ljava/lang/String;

    .line 13
    sput-object v1, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->mChannel:Ljava/lang/String;

    .line 19
    sput-boolean v0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->ACTIVITY_DURATION_OPEN:Z

    .line 20
    sput-boolean v0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->mNeedGizp:Z

    .line 22
    sput-wide v2, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->kContinueSessionMillis:J

    .line 24
    const-wide/32 v0, 0x15f90

    sput-wide v0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->kUploadInterval:J

    .line 25
    sput-wide v2, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->kForceUploadInterval:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->mAppkey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 38
    invoke-static {p0}, Lcom/sina/weibo/sdk/statistic/LogBuilder;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->mAppkey:Ljava/lang/String;

    .line 41
    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->mAppkey:Ljava/lang/String;

    return-object v0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->mChannel:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 46
    invoke-static {p0}, Lcom/sina/weibo/sdk/statistic/LogBuilder;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->mChannel:Ljava/lang/String;

    .line 48
    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method public static getForceUploadInterval()J
    .locals 2

    .prologue
    .line 74
    sget-wide v0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->kForceUploadInterval:J

    return-wide v0
.end method

.method public static getUploadInterval()J
    .locals 2

    .prologue
    .line 52
    sget-wide v0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->kUploadInterval:J

    return-wide v0
.end method

.method public static isNeedGizp()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->mNeedGizp:Z

    return v0
.end method

.method public static setAppkey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    sput-object p0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->mAppkey:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    sput-object p0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->mChannel:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static setForceUploadInterval(J)V
    .locals 0

    .prologue
    .line 78
    sput-wide p0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->kForceUploadInterval:J

    .line 79
    return-void
.end method

.method public static setNeedGizp(Z)V
    .locals 0

    .prologue
    .line 70
    sput-boolean p0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->mNeedGizp:Z

    .line 71
    return-void
.end method

.method public static setUploadInterval(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    const-wide/16 v0, 0x7530

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x1b77400

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    .line 59
    const-string v1, "The interval must be between 30 seconds and 8 hours"

    .line 58
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    sput-wide p0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->kUploadInterval:J

    .line 63
    return-void
.end method
