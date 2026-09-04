.class Lcom/smartisanos/launcher/view/WeatherView$11$1;
.super Lcom/smartisanos/smengine/Event;
.source "WeatherView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/WeatherView$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/view/WeatherView$11;


.method constructor <init>(Lcom/smartisanos/launcher/view/WeatherView$11;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/view/WeatherView$11;
    .param p2, "type"    # I

    .prologue
    .line 1544
    iput-object p1, p0, Lcom/smartisanos/launcher/view/WeatherView$11$1;->this$1:Lcom/smartisanos/launcher/view/WeatherView$11;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView$11$1;->this$1:Lcom/smartisanos/launcher/view/WeatherView$11;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView$11;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/WeatherView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView$11$1;->this$1:Lcom/smartisanos/launcher/view/WeatherView$11;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView$11;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/WeatherView;->access$000(Lcom/smartisanos/launcher/view/WeatherView;)V

    .line 1549
    :cond_0
    return-void
.end method
