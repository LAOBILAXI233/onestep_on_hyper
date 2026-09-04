.class public Lcom/sina/weibo/sdk/call/Position;
.super Ljava/lang/Object;
.source "Position.java"


.field private mLatitude:F

.field private mLongitude:F

.field private mOffset:Z


.method public constructor <init>(FF)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/sina/weibo/sdk/call/Position;->mLongitude:F

    .line 47
    iput p2, p0, Lcom/sina/weibo/sdk/call/Position;->mLatitude:F

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/call/Position;->mOffset:Z

    .line 49
    return-void
.end method

.method public constructor <init>(FFZ)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/sina/weibo/sdk/call/Position;->mLongitude:F

    .line 56
    iput p2, p0, Lcom/sina/weibo/sdk/call/Position;->mLatitude:F

    .line 57
    iput-boolean p3, p0, Lcom/sina/weibo/sdk/call/Position;->mOffset:Z

    .line 58
    return-void
.end method


.method checkValid()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v2, -0x3ccc0000    # -180.0f

    .line 120
    iget v1, p0, Lcom/sina/weibo/sdk/call/Position;->mLongitude:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sina/weibo/sdk/call/Position;->mLongitude:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/sina/weibo/sdk/call/Position;->mLongitude:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    iget v1, p0, Lcom/sina/weibo/sdk/call/Position;->mLatitude:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sina/weibo/sdk/call/Position;->mLatitude:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/sina/weibo/sdk/call/Position;->mLatitude:F

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_0

    .line 126
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLatitude()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/sina/weibo/sdk/call/Position;->mLatitude:F

    return v0
.end method

.method public getLongitude()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/sina/weibo/sdk/call/Position;->mLongitude:F

    return v0
.end method

.method public getStrLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/sina/weibo/sdk/call/Position;->mLatitude:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/sina/weibo/sdk/call/Position;->mLongitude:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/call/Position;->mOffset:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public isOffset()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/call/Position;->mOffset:Z

    return v0
.end method
