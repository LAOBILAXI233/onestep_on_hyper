.class Lcom/loc/a$a;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


.field a:D

.field b:D

.field c:J

.field d:F

.field e:F

.field f:I

.field g:Ljava/lang/String;

.field final synthetic h:Lcom/loc/a;


.method constructor <init>(Lcom/loc/a;Lcom/amap/api/location/AMapLocation;I)V
    .locals 2

    iput-object p1, p0, Lcom/loc/a$a;->h:Lcom/loc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/a$a;->a:D

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/a$a;->b:D

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/a$a;->c:J

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    iput v0, p0, Lcom/loc/a$a;->d:F

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    iput v0, p0, Lcom/loc/a$a;->e:F

    iput p3, p0, Lcom/loc/a$a;->f:I

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/a$a;->g:Ljava/lang/String;

    return-void
.end method


.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    check-cast p1, Lcom/loc/a$a;

    iget-wide v2, p0, Lcom/loc/a$a;->a:D

    iget-wide v4, p1, Lcom/loc/a$a;->a:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/loc/a$a;->b:D

    iget-wide v4, p1, Lcom/loc/a$a;->b:D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-wide v2, p0, Lcom/loc/a$a;->a:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/loc/a$a;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/loc/a$a;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/loc/a$a;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/loc/a$a;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/loc/a$a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/loc/a$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
