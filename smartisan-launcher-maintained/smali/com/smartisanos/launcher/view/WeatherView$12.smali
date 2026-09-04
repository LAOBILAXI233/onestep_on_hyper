.class Lcom/smartisanos/launcher/view/WeatherView$12;
.super Ljava/lang/Object;
.source "WeatherView.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/WeatherView;->onTemperatureTypeChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/WeatherView;


.method constructor <init>(Lcom/smartisanos/launcher/view/WeatherView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/WeatherView;

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/smartisanos/launcher/view/WeatherView$12;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 1585
    new-instance v0, Lcom/smartisanos/launcher/view/WeatherView$12$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/WeatherView$12$1;-><init>(Lcom/smartisanos/launcher/view/WeatherView$12;I)V

    const/4 v1, 0x0

    .line 1591
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/WeatherView$12$1;->send(F)V

    .line 1592
    return-void
.end method
