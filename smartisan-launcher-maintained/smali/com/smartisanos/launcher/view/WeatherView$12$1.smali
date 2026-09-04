.class Lcom/smartisanos/launcher/view/WeatherView$12$1;
.super Lcom/smartisanos/smengine/Event;
.source "WeatherView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/WeatherView$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/view/WeatherView$12;


.method constructor <init>(Lcom/smartisanos/launcher/view/WeatherView$12;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/view/WeatherView$12;
    .param p2, "type"    # I

    .prologue
    .line 1585
    iput-object p1, p0, Lcom/smartisanos/launcher/view/WeatherView$12$1;->this$1:Lcom/smartisanos/launcher/view/WeatherView$12;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView$12$1;->this$1:Lcom/smartisanos/launcher/view/WeatherView$12;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView$12;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/WeatherView;->access$100(Lcom/smartisanos/launcher/view/WeatherView;I)V

    .line 1589
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView$12$1;->this$1:Lcom/smartisanos/launcher/view/WeatherView$12;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView$12;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/WeatherView;->changeWeather()V

    .line 1590
    return-void
.end method
