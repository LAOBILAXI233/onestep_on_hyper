.class Lcom/smartisanos/launcher/view/WeatherView$8;
.super Ljava/lang/Object;
.source "WeatherView.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/WeatherView;->postDelayRunnable(JIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/WeatherView;

.field final synthetic val$iconIndex:I

.field final synthetic val$isNight:Z


.method constructor <init>(Lcom/smartisanos/launcher/view/WeatherView;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/WeatherView;

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/smartisanos/launcher/view/WeatherView$8;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/WeatherView$8;->val$isNight:Z

    iput p3, p0, Lcom/smartisanos/launcher/view/WeatherView$8;->val$iconIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1357
    const/4 v1, 0x0

    .line 1358
    .local v1, "icon":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/WeatherView$8;->val$isNight:Z

    if-eqz v2, :cond_0

    .line 1359
    iget-object v2, p0, Lcom/smartisanos/launcher/view/WeatherView$8;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/WeatherView;->access$200(Lcom/smartisanos/launcher/view/WeatherView;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/launcher/view/WeatherView$8;->val$iconIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "icon":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1364
    .restart local v1    # "icon":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/WeatherView$8;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/WeatherView;->access$400(Lcom/smartisanos/launcher/view/WeatherView;)[Ljava/lang/String;

    move-result-object v2

    aput-object v1, v2, v5

    .line 1365
    iget-object v2, p0, Lcom/smartisanos/launcher/view/WeatherView$8;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/WeatherView;->access$500(Lcom/smartisanos/launcher/view/WeatherView;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/WeatherView$8;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/WeatherView;->access$500(Lcom/smartisanos/launcher/view/WeatherView;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v2, v5

    .line 1366
    new-instance v0, Lcom/smartisanos/launcher/view/WeatherView$8$1;

    const/16 v2, 0x64

    invoke-direct {v0, p0, v2}, Lcom/smartisanos/launcher/view/WeatherView$8$1;-><init>(Lcom/smartisanos/launcher/view/WeatherView$8;I)V

    .line 1372
    .local v0, "event":Lcom/smartisanos/smengine/Event;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/EventManager;->sendEvent(Lcom/smartisanos/smengine/Event;)V

    .line 1373
    return-void

    .line 1361
    .end local v0    # "event":Lcom/smartisanos/smengine/Event;
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/WeatherView$8;->this$0:Lcom/smartisanos/launcher/view/WeatherView;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/WeatherView;->access$300(Lcom/smartisanos/launcher/view/WeatherView;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/launcher/view/WeatherView$8;->val$iconIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "icon":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "icon":Ljava/lang/String;
    goto :goto_0
.end method
