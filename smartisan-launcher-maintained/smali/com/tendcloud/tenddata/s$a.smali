.class final Lcom/tendcloud/tenddata/s$a;
.super Ljava/lang/Object;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:J

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:J

.field g:Ljava/util/Map;


.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/s$a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/s$a;->f:J

    return-void
.end method
