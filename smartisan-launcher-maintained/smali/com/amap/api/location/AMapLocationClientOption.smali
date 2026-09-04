.class public Lcom/amap/api/location/AMapLocationClientOption;
.super Ljava/lang/Object;
.source "AMapLocationClientOption.java"

.implements Ljava/lang/Cloneable;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    }
.end annotation


.field private a:J

.field private b:J

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

.field private h:Z

.field private i:Z

.field private j:Z


.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->a:J

    sget v0, Lcom/loc/e;->j:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:Z

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Z

    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->j:Z

    return-void
.end method

.method private a(Lcom/amap/api/location/AMapLocationClientOption;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 2

    iget-wide v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->a:J

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->a:J

    iget-boolean v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->c:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:Z

    iget-object v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->g:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-boolean v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    iget-boolean v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    iget-boolean v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->i:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Z

    iget-boolean v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    iget-boolean v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    iget-wide v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    return-object p0
.end method


.method public clone()Lcom/amap/api/location/AMapLocationClientOption;
    .locals 1

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    invoke-direct {v0, p0}, Lcom/amap/api/location/AMapLocationClientOption;->a(Lcom/amap/api/location/AMapLocationClientOption;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClientOption;->clone()Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    return-object v0
.end method

.method public getHttpTimeOut()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    return-wide v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->a:J

    return-wide v0
.end method

.method public getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    return-object v0
.end method

.method public isGpsFirst()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Z

    return v0
.end method

.method public isKillProcess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    return v0
.end method

.method public isMockEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    return v0
.end method

.method public isNeedAddress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    return v0
.end method

.method public isOffset()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->j:Z

    return v0
.end method

.method public isOnceLocation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:Z

    return v0
.end method

.method public isWifiActiveScan()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    return v0
.end method

.method public setGpsFirst(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Z

    return-object p0
.end method

.method public setHttpTimeOut(J)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    return-void
.end method

.method public setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 3

    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->a:J

    return-object p0
.end method

.method public setKillProcess(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    return-object p0
.end method

.method public setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    return-object p0
.end method

.method public setMockEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    return-void
.end method

.method public setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    return-object p0
.end method

.method public setOffset(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->j:Z

    return-object p0
.end method

.method public setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:Z

    return-object p0
.end method

.method public setWifiActiveScan(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    return-void
.end method
