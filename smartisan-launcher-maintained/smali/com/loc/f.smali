.class public Lcom/loc/f;
.super Ljava/lang/Object;
.source "FenceManager.java"


.field a:Landroid/content/Context;

.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Landroid/app/PendingIntent;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/fence/Fence;",
            ">;>;"
        }
    .end annotation
.end field


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/loc/f;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/app/PendingIntent;Lcom/amap/api/fence/Fence;I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fenceid"

    iget-object v3, p2, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "event"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/loc/f;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FenceManager"

    const-string v2, "fcIntent"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/app/PendingIntent;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/loc/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/fence/Fence;

    iget-object v3, v0, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v0}, Lcom/loc/f;->a(Lcom/amap/api/fence/Fence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/amap/api/fence/Fence;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/amap/api/fence/Fence;->b()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/fence/Fence;->b()J

    move-result-wide v0

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/loc/f;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_2
    :goto_1
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/fence/Fence;

    iget-object v5, v1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0, v1}, Lcom/loc/f;->a(Lcom/amap/api/fence/Fence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    :goto_3
    move v2, v1

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_3
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method


.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public a(Lcom/amap/api/location/AMapLocation;)V
    .locals 8

    invoke-direct {p0}, Lcom/loc/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/fence/Fence;

    invoke-direct {p0, v1}, Lcom/loc/f;->a(Lcom/amap/api/fence/Fence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x4

    new-array v2, v2, [D

    const/4 v3, 0x0

    iget-wide v6, v1, Lcom/amap/api/fence/Fence;->d:D

    aput-wide v6, v2, v3

    const/4 v3, 0x1

    iget-wide v6, v1, Lcom/amap/api/fence/Fence;->c:D

    aput-wide v6, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v2, v3

    invoke-static {v2}, Lcom/loc/cw;->a([D)F

    move-result v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v3

    const/high16 v6, 0x43fa0000    # 500.0f

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_5

    iget v3, v1, Lcom/amap/api/fence/Fence;->e:F

    const/high16 v6, 0x43fa0000    # 500.0f

    add-float/2addr v3, v6

    sub-float/2addr v2, v3

    move v3, v2

    :goto_1
    const/4 v2, 0x0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    iget v3, v1, Lcom/amap/api/fence/Fence;->g:I

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    const/4 v3, 0x0

    iput v3, v1, Lcom/amap/api/fence/Fence;->g:I

    :goto_2
    if-eqz v2, :cond_8

    iget v2, v1, Lcom/amap/api/fence/Fence;->g:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/amap/api/fence/Fence;->h:J

    invoke-virtual {v1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v1, v3}, Lcom/loc/f;->a(Landroid/app/PendingIntent;Lcom/amap/api/fence/Fence;I)V

    goto :goto_0

    :cond_5
    iget v6, v1, Lcom/amap/api/fence/Fence;->e:F

    add-float/2addr v3, v6

    sub-float/2addr v2, v3

    move v3, v2

    goto :goto_1

    :cond_6
    iget v3, v1, Lcom/amap/api/fence/Fence;->g:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_7

    const/4 v2, 0x1

    :cond_7
    const/4 v3, 0x1

    iput v3, v1, Lcom/amap/api/fence/Fence;->g:I

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/api/fence/Fence;->h:J

    invoke-virtual {v1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/loc/f;->a(Landroid/app/PendingIntent;Lcom/amap/api/fence/Fence;I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    iget-wide v2, v1, Lcom/amap/api/fence/Fence;->h:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v2

    iget-wide v6, v1, Lcom/amap/api/fence/Fence;->h:J

    sub-long/2addr v2, v6

    invoke-virtual {v1}, Lcom/amap/api/fence/Fence;->c()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/api/fence/Fence;->h:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const/4 v3, 0x4

    invoke-direct {p0, v2, v1, v3}, Lcom/loc/f;->a(Landroid/app/PendingIntent;Lcom/amap/api/fence/Fence;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/app/PendingIntent;)Z
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/fence/Fence;

    iget-object v0, v0, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/loc/f;->a(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/app/PendingIntent;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lcom/loc/f;->a(Landroid/app/PendingIntent;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/fence/Fence;Landroid/app/PendingIntent;)Z
    .locals 6

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/amap/api/fence/Fence;->e:F

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/amap/api/fence/Fence;->e:F

    const/high16 v2, 0x447a0000    # 1000.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/loc/f;->b()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    const/4 v0, 0x7

    invoke-virtual {p1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v2

    if-le v2, v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_1
    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_1

    :cond_8
    const/16 v0, 0x14

    if-le v2, v0, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    const/4 v0, -0x1

    iput v0, p1, Lcom/amap/api/fence/Fence;->g:I

    invoke-direct {p0}, Lcom/loc/f;->b()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/fence/Fence;

    iget-object v4, v1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    iget-object v5, p1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    :goto_3
    move-object v2, v1

    goto :goto_2

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_d
    move-object v1, v2

    goto :goto_3
.end method
