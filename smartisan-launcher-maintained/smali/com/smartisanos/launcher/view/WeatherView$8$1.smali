.class Lcom/smartisanos/launcher/view/WeatherView$8$1;
.super Lcom/smartisanos/smengine/Event;
.source "WeatherView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/WeatherView$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/view/WeatherView$8;


.method constructor <init>(Lcom/smartisanos/launcher/view/WeatherView$8;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/view/WeatherView$8;
    .param p2, "type"    # I

    .prologue
    .line 1366
    iput-object p1, p0, Lcom/smartisanos/launcher/view/WeatherView$8$1;->this$1:Lcom/smartisanos/launcher/view/WeatherView$8;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView$8$1;->this$1:Lcom/smartisanos/launcher/view/WeatherView$8;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView$8;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/WeatherView;->changeWeather()V

    .line 1370
    return-void
.end method
