.class Lcom/smartisanos/launcher/view/WeatherView$4;
.super Lcom/smartisanos/smengine/Event;
.source "WeatherView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/WeatherView;->handleWeatherData(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/WeatherView;


.method constructor <init>(Lcom/smartisanos/launcher/view/WeatherView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/WeatherView;
    .param p2, "type"    # I

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/smartisanos/launcher/view/WeatherView$4;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView$4;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/WeatherView;->updatePageCell()V

    .line 1080
    return-void
.end method
