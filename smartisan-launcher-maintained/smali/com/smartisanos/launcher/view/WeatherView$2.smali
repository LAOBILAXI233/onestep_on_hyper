.class Lcom/smartisanos/launcher/view/WeatherView$2;
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
    .line 806
    iput-object p1, p0, Lcom/smartisanos/launcher/view/WeatherView$2;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView$2;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/WeatherView;->access$000(Lcom/smartisanos/launcher/view/WeatherView;)V

    .line 809
    return-void
.end method
