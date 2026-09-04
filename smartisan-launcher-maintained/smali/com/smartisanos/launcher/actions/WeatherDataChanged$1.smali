.class final Lcom/smartisanos/launcher/actions/WeatherDataChanged$1;
.super Lcom/smartisanos/smengine/Event;
.source "WeatherDataChanged.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/WeatherDataChanged;->handleWeatherDataChange(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$arg:Ljava/lang/String;

.field final synthetic val$bundle:Landroid/os/Bundle;


.method constructor <init>(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 31
    iput-object p2, p0, Lcom/smartisanos/launcher/actions/WeatherDataChanged$1;->val$arg:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisanos/launcher/actions/WeatherDataChanged$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/WeatherDataChanged$1;->val$arg:Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/WeatherDataChanged$1;->val$bundle:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/actions/WeatherDataChanged;->changeWeather(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 34
    return-void
.end method
