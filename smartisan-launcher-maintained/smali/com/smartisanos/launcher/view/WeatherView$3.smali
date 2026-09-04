.class Lcom/smartisanos/launcher/view/WeatherView$3;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "WeatherView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/WeatherView;->getSwitchAnim()Lcom/smartisanos/smengine/AnimationTimeLine;
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
    .line 894
    iput-object p1, p0, Lcom/smartisanos/launcher/view/WeatherView$3;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 901
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v0, v1, :cond_0

    .line 902
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 906
    :goto_0
    return-void

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView$3;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/WeatherView;->access$000(Lcom/smartisanos/launcher/view/WeatherView;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView$3;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/WeatherView;->setVisibility(Z)V

    .line 898
    return-void
.end method
