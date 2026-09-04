.class public Lcom/loc/i;
.super Ljava/lang/Object;
.source "LastLocationManager.java"


.field private static e:Lcom/loc/i;


.field a:Landroid/content/Context;

.field b:Landroid/content/SharedPreferences;

.field c:Landroid/content/SharedPreferences$Editor;

.field private d:Ljava/lang/String;


.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/i;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/i;->b:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/loc/i;->c:Landroid/content/SharedPreferences$Editor;

    iput-object p1, p0, Lcom/loc/i;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/i;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "MD5"

    iget-object v1, p0, Lcom/loc/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/cg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/i;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/loc/i;
    .locals 1

    sget-object v0, Lcom/loc/i;->e:Lcom/loc/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/i;

    invoke-direct {v0, p0}, Lcom/loc/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/loc/i;->e:Lcom/loc/i;

    :cond_0
    sget-object v0, Lcom/loc/i;->e:Lcom/loc/i;

    return-object v0
.end method


.method public a()Lcom/amap/api/location/AMapLocation;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/i;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/loc/i;->a:Landroid/content/Context;

    const-string v1, "pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastfix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/loc/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Lcom/loc/r;->b(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v5, p0, Lcom/loc/i;->d:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/loc/cg;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v5, "UTF-8"

    invoke-direct {v0, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/loc/e;->a(Lorg/json/JSONObject;)Lcom/amap/api/location/AMapLocation;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LastLocationManager"

    const-string v5, "getLastFix part1"

    invoke-static {v0, v1, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "LastLocationManager"

    const-string v3, "getLastFix part2"

    invoke-static {v0, v1, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method public a(Lcom/amap/api/location/AMapLocation;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/i;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/loc/cw;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/loc/i;->b:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/loc/i;->a:Landroid/content/Context;

    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/i;->b:Landroid/content/SharedPreferences;

    :cond_2
    iget-object v1, p0, Lcom/loc/i;->c:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/loc/i;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/i;->c:Landroid/content/SharedPreferences$Editor;

    :cond_3
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->toStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->toStr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/loc/i;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/loc/cg;->c([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/loc/r;->b([B)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastfix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/loc/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/i;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/loc/i;->c:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/loc/cv;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LastLocationManager"

    const-string v3, "setLastFix"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
