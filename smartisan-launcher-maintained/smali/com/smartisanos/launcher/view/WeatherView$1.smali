.class Lcom/smartisanos/launcher/view/WeatherView$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "WeatherView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/WeatherView;->playAnimation()V
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
    .line 757
    iput-object p1, p0, Lcom/smartisanos/launcher/view/WeatherView$1;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView$1;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/WeatherView;->updatePageCell()V

    .line 764
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView$1;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/WeatherView;->setVisibility(Z)V

    .line 760
    return-void
.end method
