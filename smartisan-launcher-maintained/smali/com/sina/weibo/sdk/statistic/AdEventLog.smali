.class Lcom/sina/weibo/sdk/statistic/AdEventLog;
.super Lcom/sina/weibo/sdk/statistic/EventLog;
.source "AdEventLog.java"


.field private mAid:Ljava/lang/String;

.field private mAppkey:Ljava/lang/String;

.field private mExtend:Ljava/util/Map;
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

.field private mPage_id:Ljava/lang/String;


.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    const-string v0, ""

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/statistic/EventLog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/statistic/AdEventLog;->mAid:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/statistic/AdEventLog;->mAppkey:Ljava/lang/String;

    .line 23
    return-void
.end method


.method public getmAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sina/weibo/sdk/statistic/AdEventLog;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public getmAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sina/weibo/sdk/statistic/AdEventLog;->mAppkey:Ljava/lang/String;

    return-object v0
.end method

.method public getmExtend()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sina/weibo/sdk/statistic/AdEventLog;->mExtend:Ljava/util/Map;

    return-object v0
.end method

.method public getmPage_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sina/weibo/sdk/statistic/AdEventLog;->mPage_id:Ljava/lang/String;

    return-object v0
.end method

.method public setmAid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sina/weibo/sdk/statistic/AdEventLog;->mAid:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setmAppkey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sina/weibo/sdk/statistic/AdEventLog;->mAppkey:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setmExtend(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sina/weibo/sdk/statistic/AdEventLog;->mExtend:Ljava/util/Map;

    .line 39
    return-void
.end method

.method public setmPage_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sina/weibo/sdk/statistic/AdEventLog;->mPage_id:Ljava/lang/String;

    .line 55
    return-void
.end method
