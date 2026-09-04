.class public Lcom/smartisan/weather/lib/bean/WeatherResId;
.super Ljava/lang/Object;
.source "WeatherResId.java"


.field public description:I

.field public icon:I

.field public iconNight:I

.field public littleIcon:I

.field public littleIconNight:I


.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "icon"    # I
    .param p2, "iconNight"    # I
    .param p3, "littleIcon"    # I
    .param p4, "littleIconNight"    # I
    .param p5, "description"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/smartisan/weather/lib/bean/WeatherResId;->icon:I

    .line 15
    iput p2, p0, Lcom/smartisan/weather/lib/bean/WeatherResId;->iconNight:I

    .line 16
    iput p3, p0, Lcom/smartisan/weather/lib/bean/WeatherResId;->littleIcon:I

    .line 17
    iput p4, p0, Lcom/smartisan/weather/lib/bean/WeatherResId;->littleIconNight:I

    .line 18
    iput p5, p0, Lcom/smartisan/weather/lib/bean/WeatherResId;->description:I

    .line 19
    return-void
.end method


.method public getIcon(Z)I
    .locals 1
    .param p1, "isNight"    # Z

    .prologue
    .line 22
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/smartisan/weather/lib/bean/WeatherResId;->iconNight:I

    if-lez v0, :cond_0

    .line 23
    iget v0, p0, Lcom/smartisan/weather/lib/bean/WeatherResId;->iconNight:I

    .line 25
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/smartisan/weather/lib/bean/WeatherResId;->icon:I

    goto :goto_0
.end method

.method public getLittleIcon(Z)I
    .locals 1
    .param p1, "isNight"    # Z

    .prologue
    .line 30
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/smartisan/weather/lib/bean/WeatherResId;->littleIconNight:I

    if-lez v0, :cond_0

    .line 31
    iget v0, p0, Lcom/smartisan/weather/lib/bean/WeatherResId;->littleIconNight:I

    .line 33
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/smartisan/weather/lib/bean/WeatherResId;->littleIcon:I

    goto :goto_0
.end method
