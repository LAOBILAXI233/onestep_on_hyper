.class Lcom/tendcloud/tenddata/ah;
.super Ljava/lang/Object;

.implements Landroid/hardware/SensorEventListener;


.field final a:F

.field final b:F

.field c:Z

.field final synthetic d:Lcom/tendcloud/tenddata/f;


.method constructor <init>(Lcom/tendcloud/tenddata/f;)V
    .locals 1

    iput-object p1, p0, Lcom/tendcloud/tenddata/ah;->d:Lcom/tendcloud/tenddata/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/tendcloud/tenddata/ah;->a:F

    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/tendcloud/tenddata/ah;->b:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/ah;->c:Z

    return-void
.end method


.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v0, v4

    aget v2, v0, v5

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v1

    iget-boolean v1, p0, Lcom/tendcloud/tenddata/ah;->c:Z

    if-nez v1, :cond_4

    const/high16 v1, 0x42340000    # 45.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iput-boolean v5, p0, Lcom/tendcloud/tenddata/ah;->c:Z

    iget-object v0, p0, Lcom/tendcloud/tenddata/ah;->d:Lcom/tendcloud/tenddata/f;

    invoke-static {v0}, Lcom/tendcloud/tenddata/f;->c(Lcom/tendcloud/tenddata/f;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/ah;->d:Lcom/tendcloud/tenddata/f;

    invoke-static {v0}, Lcom/tendcloud/tenddata/f;->d(Lcom/tendcloud/tenddata/f;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/tendcloud/tenddata/ah;->d:Lcom/tendcloud/tenddata/f;

    invoke-static {v0}, Lcom/tendcloud/tenddata/f;->e(Lcom/tendcloud/tenddata/f;)Lcom/tendcloud/tenddata/f$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tendcloud/tenddata/ah;->d:Lcom/tendcloud/tenddata/f;

    invoke-static {v0}, Lcom/tendcloud/tenddata/f;->f(Lcom/tendcloud/tenddata/f;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.VIBRATE"

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/an;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tendcloud/tenddata/ah;->d:Lcom/tendcloud/tenddata/f;

    invoke-static {v0}, Lcom/tendcloud/tenddata/f;->f(Lcom/tendcloud/tenddata/f;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/ah;->d:Lcom/tendcloud/tenddata/f;

    invoke-static {v0}, Lcom/tendcloud/tenddata/f;->e(Lcom/tendcloud/tenddata/f;)Lcom/tendcloud/tenddata/f$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tendcloud/tenddata/f$a;->a()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/ah;->d:Lcom/tendcloud/tenddata/f;

    invoke-static {v0}, Lcom/tendcloud/tenddata/f;->a(Lcom/tendcloud/tenddata/f;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tendcloud/tenddata/ah;->d:Lcom/tendcloud/tenddata/f;

    invoke-static {v0}, Lcom/tendcloud/tenddata/f;->a(Lcom/tendcloud/tenddata/f;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/ah;->d:Lcom/tendcloud/tenddata/f;

    invoke-static {v1}, Lcom/tendcloud/tenddata/f;->b(Lcom/tendcloud/tenddata/f;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/ah;->d:Lcom/tendcloud/tenddata/f;

    invoke-static {v0, v4}, Lcom/tendcloud/tenddata/f;->a(Lcom/tendcloud/tenddata/f;I)I

    :cond_3
    return-void

    :cond_4
    const/high16 v1, 0x41c80000    # 25.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iput-boolean v4, p0, Lcom/tendcloud/tenddata/ah;->c:Z

    goto :goto_0
.end method
